# Testing framework to check the validity of this PVS formula from theory
# polygon_membership:

#   point_in_polygon_conds_equiv: AXIOM 
#     FORALL (p: point_2d, v: Normalized, G: simple_polygon_2d):
#       point_in_polygon?(p, G) IFF point_in_polygon_arb?(p, v, G)

from math import sqrt, sin, cos
from random import random, uniform

def vlen(u): return sqrt(u[0] * u[0] + u[1] * u[1])

def vadd(q, p): return (q[0] + p[0], q[1] + p[1])

def vsub(q, p): return (q[0] - p[0], q[1] - p[1])

def scal(a, p): return (a * p[0], a * p[1])

def dot(u, v): return u[0] * v[0] + u[1] * v[1]

def cross(u, v): return u[0] * v[1] - u[1] * v[0]

def normalize(u):
    vl = vlen(u)
    return (u[0] / vl, u[1] / vl)

def approx_eq_0(x, eps=1e-12):
    return abs(x) < eps

def reals_approx_eq(x, y, eps=1e-12):
    return abs(x - y) < eps

def vectors_approx_eq(u, v, eps=1e-12):
    return abs(u[0] - v[0]) < eps and abs(u[1] - v[1]) < eps

# Determine where two line segments intersect or whether they cannot.
def segment_intersect_kernel(s1, s2):
    # return code: 0 - 'Collinear_Overlapping', 1 - 'Collinear_Non_Overlapping',
    #   2 - 'Parallel', 3 - 'Intersecting', 4 - 'Non_Parallel_Not_Intersecting'
    zero_point = (0.0, 0.0)
    p = s1[0]
    r = vsub(s1[1], p)
    q = s2[0]
    s = vsub(s2[1], q)
    r_cross_s = cross(r, s)
    q_minus_p = vsub(q, p)
    q_minus_p_cross_r = cross(q_minus_p, r)
    if r_cross_s == 0 and q_minus_p_cross_r == 0:
        t0 = dot(q_minus_p, r)
        t1 = dot(vsub(s2[1], p), r)
        norm_sq = dot(r, r)
        if (0 <= t0 <= norm_sq or 0 <= t1 <= norm_sq or
            t0 < 0 and norm_sq < t1 or t1 < 0 and norm_sq < t0):
            return (0, zero_point)
        else:
            return (1, zero_point)
    elif r_cross_s == 0 and q_minus_p_cross_r != 0:
        return (2, zero_point)
    else:
        q_minus_p_cross_s = cross(q_minus_p, s)
        t = q_minus_p_cross_s / r_cross_s
        u = q_minus_p_cross_r / r_cross_s
        if 0 <= t <= 1 and 0 <= u <= 1:
            return (3, vadd(p, scal(t, r)))
        else:
            return (4, zero_point)

  # is_point_on_segment?(p: point_2d, s: segment_2d): bool =
  #   LET A: point_2d = s`p1 IN
  #   LET B: point_2d = s`p2 IN
  #   LET C: point_2d = p IN
  #   LET A_to_C: vector_2d = vector_from_point_to_point(A, C) IN
  #   LET A_to_B: vector_2d = vector_from_point_to_point(A, B) IN
  #   LET AB_dot_AC: real = A_to_B * A_to_C IN
  #   LET AB_dot_AB: real = A_to_B * A_to_B IN
  #   are_vectors_collinear?(A_to_C, A_to_B) AND
  #   (0 <= AB_dot_AC) AND (AB_dot_AC <= AB_dot_AB);

def is_point_on_segment(p, s):
    ac = vsub(p, s[0])
    ab = vsub(s[1], s[0])
    ab_dot_ac = dot(ab, ac)
    ab_dot_ab = dot(ab, ab)
    return approx_eq_0(cross(ac, ab)) and 0 <= ab_dot_ac <= ab_dot_ab

# -------------
    
def is_vertex(G, p): return p in G

  # From theory horiz_edge_crossing:

  # count_adjacent_edges?(p: point_2d, G: simple_polygon_2d): bool =
  #   EXISTS (i: below(G`num_vertices)):
  #     p = G`vertices(i) AND
  #     (LET prev = G`vertices(prev_index(G, i)),
  #          next = G`vertices(next_index(G, i)) IN
  #        % count only crossings where one edge lies above the ray
  #        % and the other does not (it's horizontal or lies below)
  #        (prev`y > p`y AND next`y <= p`y) OR 
  #        (next`y > p`y AND prev`y <= p`y));

def count_adjacent_edges(p, G):
    n = len(G)
    for i in range(n):
        if p != G[i]: continue
        prev = G[(i-1) % n]
        next = G[(i+1) % n]
        if (prev[1] > p[1] and next[1] <= p[1] or
            next[1] > p[1] and prev[1] <= p[1]):
            return True
    return False

  # counted_crossing?(G: simple_polygon_2d)(p: point_2d): bool =
  #   IF vertex?(G)(p) THEN
  #     count_adjacent_edges?(p, G)
  #   ELSE
  #     EXISTS (s: (edge_of_polygon?(G))):
  #       point_on_segment?(p, s) AND NOT horizontal_segment?(s)
  #   ENDIF;

def counted_crossing(G, e, p):
    if is_vertex(G, p):
        return count_adjacent_edges(p, G)
    else:
        return is_point_on_segment(p, e) and not e[0][1] == e[1][1]

def point_on_ray(p, r): return r[0] <= p[0] and r[1] == p[1]

  # edge_crossing_point(e: segment_2d,
  #                        p: (rightward_edge_crossing?(e))): point_2d =
  #   IF e`p1`y /= e`p2`y
  #     THEN LET dx = e`p2`x - e`p1`x,
  #              dy = e`p2`y - e`p1`y
  #          IN (e`p1`x + (p`y - e`p1`y) * dx / dy, p`y)
  #   ELSIF e`p1`x < e`p2`x THEN e`p1 ELSE e`p2
  #   ENDIF

def edge_crossing_point(e, p):
    u, v = e
    if u[1] != v[1]:
        dx = v[0] - u[0]
        dy = v[1] - u[1]
        return (u[0] + (p[1] - u[1]) * dx / dy, p[1])
    elif u[0] < v[0]: return u
    else: return v

  # right_crossing_set(r: point_2d, G: simple_polygon_2d): finite_set[real] =
  #   {x: real | EXISTS (p: point_2d):
  #                x = p`x AND point_on_ray?(p, r) AND
  #       	 counted_crossing?(G)(p)}

def right_crossing_set(r, G, E):
    n = len(G)
    s = set()
    for i in range(n):
        q = edge_crossing_point(E[i], r)
        if point_on_ray(q, r) and counted_crossing(G, E[i], q):
            s.add(q[0])
    return s

  # point_in_polygon?(p: point_2d, G: simple_polygon_2d): bool =
  #   NOT point_on_polygon_perimeter?(G)(p) AND
  #   odd?(card(right_crossing_set(p, G)))

  
  # From theory arb_direc_edge_crossing:

  # adjacent_edges_counted?(p: point_2d, v: Normalized,
  #                         G: simple_polygon_2d): bool =
  #   EXISTS (i: below(G`num_vertices)):
  #     p = G`vertices(i) AND
  #     LET prev = G`vertices(prev_index(G, i)),
  #         next = G`vertices(next_index(G, i)) IN
  #       % count only crossings where one edge lies to the left of vector v
  #       % and the other does not (it's parallel or lies to the right)
  #       cross(v, prev - p) > 0 AND cross(v, next - p) <= 0 OR
  #       cross(v, next - p) > 0 AND cross(v, prev - p) <= 0

def adjacent_edges_counted(p, v, G):
    n = len(G)
    for i in range(n):
        if p != G[i]: continue
        prev = G[(i-1) % n]
        next = G[(i+1) % n]
        if (cross(v, vsub(prev, p)) > 0 and cross(v, vsub(next, p)) <= 0 or
            cross(v, vsub(next, p)) > 0 and cross(v, vsub(prev, p)) <= 0):
            return True
    return False

  # counted_crossing_arb?(v: Normalized, G: simple_polygon_2d)
  #                      (p: point_2d): bool =
  #   IF vertex?(G)(p)
  #     THEN adjacent_edges_counted?(p, v, G)
  #     ELSE EXISTS (s: (edge_of_polygon?(G))):
  #            point_on_segment?(p, s) AND
  #            NOT parallel?(s`p2 - s`p1, v)
  #   ENDIF

def counted_crossing_arb(G, e, p, v):
    if is_vertex(G, p):
        return adjacent_edges_counted(p, v, G)
    else:
        return (is_point_on_segment(p, e) and
                not approx_eq_0(cross(v, vsub(e[0], e[1]))))

def arb_edge_crossing_point(e, p, v):
    intersect = segment_intersect_kernel(e, (p, vadd(p, scal(1000, v))))
    if intersect[0] == 3:
        return intersect[1]
    else:
        return None

  # def point_on_arb_ray(p, r, v):
  #     EXISTS (d: nonneg_real): p = r + d * v

def point_on_arb_ray(p, r, v):
    return (approx_eq_0(cross(v, vsub(p, r))) and
            vectors_approx_eq(vsub(p, r), scal(vlen(vsub(p, r)), v)))

  # arb_crossing_set(r: point_2d, v: Normalized,
  #                  G: simple_polygon_2d): finite_set[point_2d] =
  #   {p: point_2d | point_on_arb_ray?(p, r, v) AND
  #                  counted_crossing_arb?(v, G)(p)}

def arb_crossing_set(r, v, G, E):
    n = len(G)
    v = normalize(v)
    s = set()
    for i in range(n):
        q = arb_edge_crossing_point(E[i], r, v)
        if q == None: continue
        if point_on_arb_ray(q, r, v) and counted_crossing_arb(G, E[i], q, v):
            s.add(q)
    return s

  # point_in_polygon_arb?(p: point_2d, v: Normalized,
  #                       G: simple_polygon_2d): bool =
  #   NOT point_on_polygon_perimeter?(G)(p) AND
  #   odd?(card(arb_crossing_set(p, v, G)))


  # From theory polygon_membership:

  # point_in_polygon_conds_equiv: AXIOM 
  #   FORALL (p: point_2d, v: Normalized, G: simple_polygon_2d):
  #     point_in_polygon?(p, G) IFF point_in_polygon_arb?(p, v, G)

  # Test this proposition:
  #   odd?(card(right_crossing_set(p, G))) IFF odd?(card(arb_crossing_set(p, v, G)))
  # for random values of p, v on a test polygon G

def point_in_polygon_conds_equiv(p, v, G, E):
    n_hor = len(right_crossing_set(p, G, E))
    n_arb = len(arb_crossing_set(p, v, G, E))
    return (n_hor % 2 == 1) == (n_arb % 2 == 1)

# Generate and run random test cases. Points will be generated within the
# specified bounding box. Directions are full 360.

def run_pip_tests(G, E, n, left, right, bottom, top):
    for i in range(n):
        pt = (uniform(left, right), uniform(bottom, top))
        v = normalize((uniform(-1, 1), uniform(-1, 1)))
        result = point_in_polygon_conds_equiv(pt, v, G, E)
        if not result:
            print('Test failure:', pt, v)
    print('Ran', n, 'tests')

# Test polygon is expressed as a list of vertices while its edges are pairs of points.

verts_1 = [ (float(x), float(y)) for (x,y) in   # N = 23
            ((5,15), (5,10), (8,5), (11,6), (11,12), (13,14),
             (16,8), (19,13), (24,5), (28,7), (26,10), (34,10),
             (33,16), (30,13), (27,26), (24,25), (24,12), (18,24),
             (15,22), (15,14), (12,18), (9,15), (8,20)) ]

edges_1 = [ (verts_1[i], verts_1[(i+1) % len(verts_1)])
            for i in range(len(verts_1)) ]

# Test results on 12 Oct 2022:

# >>> run_pip_tests(verts_1, edges_1, 1000000, 0, 40, 0, 30)
# Ran 1000000 tests
