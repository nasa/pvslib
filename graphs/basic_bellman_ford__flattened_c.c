//Code generated using pvs2ir2c
#include "basic_bellman_ford__flattened_c.h"


basic_bellman_ford__flattened_record_0_t new_basic_bellman_ford__flattened_record_0(void){
        basic_bellman_ford__flattened_record_0_t tmp = (basic_bellman_ford__flattened_record_0_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_record_0_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened_record_0(basic_bellman_ford__flattened_record_0_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened_record_0_ptr(pointer_t x, type_actual_t T){
        actual_basic_bellman_ford__flattened_record_0_t actual = (actual_basic_bellman_ford__flattened_record_0_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        release_basic_bellman_ford__flattened_record_0((basic_bellman_ford__flattened_record_0_t)x, basic_bellman_ford__flattened__N);
}

basic_bellman_ford__flattened_record_0_t copy_basic_bellman_ford__flattened_record_0(basic_bellman_ford__flattened_record_0_t x){
        basic_bellman_ford__flattened_record_0_t y = new_basic_bellman_ford__flattened_record_0();
        y->project_1 = (bool_t)x->project_1;
        mpq_set(y->project_2, x->project_2);
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened_record_0(basic_bellman_ford__flattened_record_0_t x, basic_bellman_ford__flattened_record_0_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        bool_t tmp = true;
        tmp = tmp && x->project_1 == y->project_1;tmp = tmp && (mpq_cmp(x->project_2, y->project_2) == 0);
        return tmp;}

char * json_basic_bellman_ford__flattened_record_0(basic_bellman_ford__flattened_record_0_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        char * tmp[2]; 
        char * fld0 = safe_malloc(21);
         sprintf(fld0, "\"project_1\" : ");
        tmp[0] = safe_strcat(fld0, json_bool(x->project_1));
        char * fld1 = safe_malloc(21);
         sprintf(fld1, "\"project_2\" : ");
        tmp[1] = safe_strcat(fld1, json_mpq(x->project_2));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened_record_0_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened_record_0_t T){
        actual_basic_bellman_ford__flattened_record_0_t actual = (actual_basic_bellman_ford__flattened_record_0_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return equal_basic_bellman_ford__flattened_record_0((basic_bellman_ford__flattened_record_0_t)x, (basic_bellman_ford__flattened_record_0_t)y, basic_bellman_ford__flattened__N);
}

char * json_basic_bellman_ford__flattened_record_0_ptr(pointer_t x, actual_basic_bellman_ford__flattened_record_0_t T){
        actual_basic_bellman_ford__flattened_record_0_t actual = (actual_basic_bellman_ford__flattened_record_0_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return json_basic_bellman_ford__flattened_record_0((basic_bellman_ford__flattened_record_0_t)x, basic_bellman_ford__flattened__N);
}

actual_basic_bellman_ford__flattened_record_0_t actual_basic_bellman_ford__flattened_record_0(mpz_ptr_t basic_bellman_ford__flattened__N){
        actual_basic_bellman_ford__flattened_record_0_t new = (actual_basic_bellman_ford__flattened_record_0_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened_record_0_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened_record_0_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened_record_0_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened_record_0_ptr);
 

        new->basic_bellman_ford__flattened__N = basic_bellman_ford__flattened__N;
 
        return new;
 };

basic_bellman_ford__flattened_record_0_t update_basic_bellman_ford__flattened_record_0_project_1(basic_bellman_ford__flattened_record_0_t x, bool_t v){
        basic_bellman_ford__flattened_record_0_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_0(x); x->count--;};
        y->project_1 = (bool_t)v;
        return y;}

basic_bellman_ford__flattened_record_0_t update_basic_bellman_ford__flattened_record_0_project_2(basic_bellman_ford__flattened_record_0_t x, mpq_ptr_t v){
        basic_bellman_ford__flattened_record_0_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_0(x); x->count--;};
        mpq_set(y->project_2, v);
        return y;}




basic_bellman_ford__flattened_record_1_t new_basic_bellman_ford__flattened_record_1(void){
        basic_bellman_ford__flattened_record_1_t tmp = (basic_bellman_ford__flattened_record_1_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_record_1_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened_record_1(basic_bellman_ford__flattened_record_1_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened_record_1_ptr(pointer_t x, type_actual_t T){
        actual_basic_bellman_ford__flattened_record_1_t actual = (actual_basic_bellman_ford__flattened_record_1_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        release_basic_bellman_ford__flattened_record_1((basic_bellman_ford__flattened_record_1_t)x, basic_bellman_ford__flattened__N);
}

basic_bellman_ford__flattened_record_1_t copy_basic_bellman_ford__flattened_record_1(basic_bellman_ford__flattened_record_1_t x){
        basic_bellman_ford__flattened_record_1_t y = new_basic_bellman_ford__flattened_record_1();
        y->project_1 = (bool_t)x->project_1;
        y->project_2 = (uint8_t)x->project_2;
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened_record_1(basic_bellman_ford__flattened_record_1_t x, basic_bellman_ford__flattened_record_1_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        bool_t tmp = true;
        tmp = tmp && x->project_1 == y->project_1;
        tmp = tmp && x->project_2 == y->project_2;
        return tmp;}

char * json_basic_bellman_ford__flattened_record_1(basic_bellman_ford__flattened_record_1_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        char * tmp[2]; 
        char * fld0 = safe_malloc(21);
         sprintf(fld0, "\"project_1\" : ");
        tmp[0] = safe_strcat(fld0, json_bool(x->project_1));
        char * fld1 = safe_malloc(21);
         sprintf(fld1, "\"project_2\" : ");
        tmp[1] = safe_strcat(fld1, json_uint8(x->project_2));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened_record_1_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened_record_1_t T){
        actual_basic_bellman_ford__flattened_record_1_t actual = (actual_basic_bellman_ford__flattened_record_1_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return equal_basic_bellman_ford__flattened_record_1((basic_bellman_ford__flattened_record_1_t)x, (basic_bellman_ford__flattened_record_1_t)y, basic_bellman_ford__flattened__N);
}

char * json_basic_bellman_ford__flattened_record_1_ptr(pointer_t x, actual_basic_bellman_ford__flattened_record_1_t T){
        actual_basic_bellman_ford__flattened_record_1_t actual = (actual_basic_bellman_ford__flattened_record_1_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return json_basic_bellman_ford__flattened_record_1((basic_bellman_ford__flattened_record_1_t)x, basic_bellman_ford__flattened__N);
}

actual_basic_bellman_ford__flattened_record_1_t actual_basic_bellman_ford__flattened_record_1(mpz_ptr_t basic_bellman_ford__flattened__N){
        actual_basic_bellman_ford__flattened_record_1_t new = (actual_basic_bellman_ford__flattened_record_1_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened_record_1_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened_record_1_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened_record_1_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened_record_1_ptr);
 

        new->basic_bellman_ford__flattened__N = basic_bellman_ford__flattened__N;
 
        return new;
 };

basic_bellman_ford__flattened_record_1_t update_basic_bellman_ford__flattened_record_1_project_1(basic_bellman_ford__flattened_record_1_t x, bool_t v){
        basic_bellman_ford__flattened_record_1_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_1(x); x->count--;};
        y->project_1 = (bool_t)v;
        return y;}

basic_bellman_ford__flattened_record_1_t update_basic_bellman_ford__flattened_record_1_project_2(basic_bellman_ford__flattened_record_1_t x, uint8_t v){
        basic_bellman_ford__flattened_record_1_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_1(x); x->count--;};
        y->project_2 = (uint8_t)v;
        return y;}




basic_bellman_ford__flattened_record_2_t new_basic_bellman_ford__flattened_record_2(void){
        basic_bellman_ford__flattened_record_2_t tmp = (basic_bellman_ford__flattened_record_2_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_record_2_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened_record_2(basic_bellman_ford__flattened_record_2_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened_record_0(x->w, basic_bellman_ford__flattened__N);
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened_record_2_ptr(pointer_t x, type_actual_t T){
        actual_basic_bellman_ford__flattened_record_2_t actual = (actual_basic_bellman_ford__flattened_record_2_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        release_basic_bellman_ford__flattened_record_2((basic_bellman_ford__flattened_record_2_t)x, basic_bellman_ford__flattened__N);
}

basic_bellman_ford__flattened_record_2_t copy_basic_bellman_ford__flattened_record_2(basic_bellman_ford__flattened_record_2_t x){
        basic_bellman_ford__flattened_record_2_t y = new_basic_bellman_ford__flattened_record_2();
        mpz_set(y->pv, x->pv);
        y->w = x->w;
        if (y->w != NULL){y->w->count++;};
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened_record_2(basic_bellman_ford__flattened_record_2_t x, basic_bellman_ford__flattened_record_2_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        bool_t tmp = true;tmp = tmp && (mpz_cmp(x->pv, y->pv) == 0);
        tmp = tmp && equal_basic_bellman_ford__flattened_record_0(x->w, y->w, basic_bellman_ford__flattened__N);
        return tmp;}

char * json_basic_bellman_ford__flattened_record_2(basic_bellman_ford__flattened_record_2_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        char * tmp[2]; 
        char * fld0 = safe_malloc(14);
         sprintf(fld0, "\"pv\" : ");
        tmp[0] = safe_strcat(fld0, json_mpz(x->pv));
        char * fld1 = safe_malloc(13);
         sprintf(fld1, "\"w\" : ");
        tmp[1] = safe_strcat(fld1, json_basic_bellman_ford__flattened_record_0(x->w, basic_bellman_ford__flattened__N));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened_record_2_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened_record_2_t T){
        actual_basic_bellman_ford__flattened_record_2_t actual = (actual_basic_bellman_ford__flattened_record_2_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return equal_basic_bellman_ford__flattened_record_2((basic_bellman_ford__flattened_record_2_t)x, (basic_bellman_ford__flattened_record_2_t)y, basic_bellman_ford__flattened__N);
}

char * json_basic_bellman_ford__flattened_record_2_ptr(pointer_t x, actual_basic_bellman_ford__flattened_record_2_t T){
        actual_basic_bellman_ford__flattened_record_2_t actual = (actual_basic_bellman_ford__flattened_record_2_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return json_basic_bellman_ford__flattened_record_2((basic_bellman_ford__flattened_record_2_t)x, basic_bellman_ford__flattened__N);
}

actual_basic_bellman_ford__flattened_record_2_t actual_basic_bellman_ford__flattened_record_2(mpz_ptr_t basic_bellman_ford__flattened__N){
        actual_basic_bellman_ford__flattened_record_2_t new = (actual_basic_bellman_ford__flattened_record_2_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened_record_2_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened_record_2_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened_record_2_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened_record_2_ptr);
 

        new->basic_bellman_ford__flattened__N = basic_bellman_ford__flattened__N;
 
        return new;
 };

basic_bellman_ford__flattened_record_2_t update_basic_bellman_ford__flattened_record_2_pv(basic_bellman_ford__flattened_record_2_t x, mpz_ptr_t v){
        basic_bellman_ford__flattened_record_2_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_2(x); x->count--;};
        mpz_set(y->pv, v);
        return y;}

basic_bellman_ford__flattened_record_2_t update_basic_bellman_ford__flattened_record_2_w(basic_bellman_ford__flattened_record_2_t x, basic_bellman_ford__flattened_record_0_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_record_2_t y;
        if (v != NULL){v->count++;};
        if (x->count == 1){y = x; if (x->w != NULL){release_basic_bellman_ford__flattened_record_0(x->w, basic_bellman_ford__flattened__N);};}
        else {y = copy_basic_bellman_ford__flattened_record_2(x); x->count--; y->w->count--;};
        y->w = (basic_bellman_ford__flattened_record_0_t)v;
        return y;}



void release_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened_funtype_3_t copy_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_htbl_t htbl, mpz_ptr_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened_funtype_3_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        int64_t tmp3946 = mpz_cmp_ui(data.key, 0);
        keyzero = (tmp3946 == 0);
        bool_t keymatch;
        int64_t tmp3947 = mpz_cmp(data.key, i);
        keymatch = (tmp3947 == 0);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                int64_t tmp3946 = mpz_cmp_ui(data.key, 0);
                keyzero = (tmp3946 == 0);

                int64_t tmp3947 = mpz_cmp(data.key, i);
                keymatch = (tmp3947 == 0);
                }
        return hashindex;
        }

basic_bellman_ford__flattened_funtype_3_t dupdate_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t a, mpz_ptr_t i, basic_bellman_ford__flattened_record_2_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_funtype_3_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened_funtype_3_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_3_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened_funtype_3_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened_funtype_3_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){mpz_init(htbl->data[j].key);mpz_set_ui(htbl->data[j].key, 0); htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened_funtype_3_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened_funtype_3_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_3_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened_funtype_3_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        int64_t tmp3948 = mpz_cmp_ui(data[j].key, 0);keyzero = (tmp3948 == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                int64_t tmp3949 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                keyzero = (tmp3949 == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        int64_t tmp3950 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                        keyzero = (tmp3950 == 0);
                                }
                                mpz_set(new_data[new_loc].key, data[j].key);
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened_record_2_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = mpz_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened_funtype_3(htbl, i, ihash);
        basic_bellman_ford__flattened_funtype_3_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        int64_t tmp3951 = mpz_cmp_ui(hentry.key, 0);hentrykeyzero = (tmp3951 == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {mpz_set(htbl->data[hashindex].key, i); htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened_record_2_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened_record_2_t tempvalue;tempvalue = (basic_bellman_ford__flattened_record_2_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened_record_2_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened_record_2(tempvalue, basic_bellman_ford__flattened__N);};
        return a;

}

basic_bellman_ford__flattened_funtype_3_t update_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t a, mpz_ptr_t i, basic_bellman_ford__flattened_record_2_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened_funtype_3(a, i, v, basic_bellman_ford__flattened__N);
            } else {
                basic_bellman_ford__flattened_funtype_3_t x = copy_basic_bellman_ford__flattened_funtype_3(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened_funtype_3(x, i, v, basic_bellman_ford__flattened__N);
            }}

bool_t equal_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t x, basic_bellman_ford__flattened_funtype_3_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        return false;}

char* json_basic_bellman_ford__flattened_funtype_3(basic_bellman_ford__flattened_funtype_3_t x, mpz_ptr_t basic_bellman_ford__flattened__N){char * result = safe_malloc(49); sprintf(result, "%s", "\"basic_bellman_ford__flattened_funtype_3\""); return result;}


basic_bellman_ford__flattened_record_2_t f_basic_bellman_ford__flattened_closure_4(struct basic_bellman_ford__flattened_closure_4_s * closure, mpz_ptr_t bvar){
if (closure->htbl != NULL){
        basic_bellman_ford__flattened_funtype_3_htbl_t htbl = closure->htbl;
        uint32_t hash = mpz_hash(bvar);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened_funtype_3(htbl, bvar, hash);
        basic_bellman_ford__flattened_funtype_3_hashentry_t entry = htbl->data[hashindex];
        bool_t keyzero;
         int64_t tmp3952 = mpz_cmp_ui(entry.key, 0);
         keyzero = (tmp3952 == 0);
        if (!keyzero || entry.keyhash != 0){
            basic_bellman_ford__flattened_record_2_t result;
            result = (basic_bellman_ford__flattened_record_2_t)entry.value;
            if (result != NULL) result->count++;
            return result;}
        

        return h_basic_bellman_ford__flattened_closure_4(bvar, closure->fvar_1, closure->fvar_2);};

return h_basic_bellman_ford__flattened_closure_4(bvar, closure->fvar_1, closure->fvar_2);}

basic_bellman_ford__flattened_record_2_t m_basic_bellman_ford__flattened_closure_4(struct basic_bellman_ford__flattened_closure_4_s * closure, mpz_ptr_t bvar){
        return h_basic_bellman_ford__flattened_closure_4(bvar, closure->fvar_1, closure->fvar_2);}

basic_bellman_ford__flattened_record_2_t h_basic_bellman_ford__flattened_closure_4(mpz_ptr_t ivar_3, mpz_ptr_t basic_bellman_ford__flattened__N, mpz_ptr_t ivar_1){
        basic_bellman_ford__flattened_record_2_t result;
        bool_t ivar_4;
        int64_t tmp3953 = mpz_cmp(ivar_3, ivar_1);
        ivar_4 = (tmp3953 == 0);
        if (ivar_4){ 
             basic_bellman_ford__flattened_record_0_t ivar_14;
             uint8_t ivar_13;
             ivar_13 = (uint8_t)0;
             mpq_ptr_t ivar_12;
             //copying to mpq from uint8;
             mpq_mk_set_ui(ivar_12, ivar_13);
             ivar_14 = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__r2er((mpz_ptr_t)basic_bellman_ford__flattened__N, (mpq_ptr_t)ivar_12);
             basic_bellman_ford__flattened_record_2_t tmp3954 = new_basic_bellman_ford__flattened_record_2();;
             result = (basic_bellman_ford__flattened_record_2_t)tmp3954;
             mpz_init(tmp3954->pv);
             mpz_set(tmp3954->pv, ivar_1);
             tmp3954->w = (basic_bellman_ford__flattened_record_0_t)ivar_14;
} else {
        
             int8_t ivar_18;
             ivar_18 = (int8_t)-1;
             mpz_ptr_t ivar_15;
             //copying to mpz from int8;
             mpz_mk_set_si(ivar_15, ivar_18);
             basic_bellman_ford__flattened_record_0_t ivar_17;
             ivar_17 = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__inf((mpz_ptr_t)basic_bellman_ford__flattened__N);
             basic_bellman_ford__flattened_record_2_t tmp3955 = new_basic_bellman_ford__flattened_record_2();;
             result = (basic_bellman_ford__flattened_record_2_t)tmp3955;
             mpz_init(tmp3955->pv);
             mpz_set(tmp3955->pv, ivar_15);
             mpz_clear(ivar_15);
             tmp3955->w = (basic_bellman_ford__flattened_record_0_t)ivar_17;
};

        return result;
}

basic_bellman_ford__flattened_closure_4_t new_basic_bellman_ford__flattened_closure_4(void){
        static struct basic_bellman_ford__flattened_funtype_3_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened_record_2_t (*)(basic_bellman_ford__flattened_funtype_3_t, mpz_ptr_t))&f_basic_bellman_ford__flattened_closure_4, .mptr = (basic_bellman_ford__flattened_record_2_t (*)(basic_bellman_ford__flattened_funtype_3_t, mpz_ptr_t))&m_basic_bellman_ford__flattened_closure_4, .rptr =  (void (*)(basic_bellman_ford__flattened_funtype_3_t))&release_basic_bellman_ford__flattened_closure_4, .cptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_3_t))&copy_basic_bellman_ford__flattened_closure_4};
        basic_bellman_ford__flattened_closure_4_t tmp = (basic_bellman_ford__flattened_closure_4_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_closure_4_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        mpz_init(tmp->fvar_1);
        mpz_init(tmp->fvar_2);
        return tmp;}

void release_basic_bellman_ford__flattened_closure_4(basic_bellman_ford__flattened_funtype_3_t closure, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_closure_4_t x = (basic_bellman_ford__flattened_closure_4_t)closure;
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened_closure_4_t copy_basic_bellman_ford__flattened_closure_4(basic_bellman_ford__flattened_closure_4_t x){
        basic_bellman_ford__flattened_closure_4_t y = new_basic_bellman_ford__flattened_closure_4();
        y->ftbl = x->ftbl;

        mpz_set(y->fvar_1, x->fvar_1);
        mpz_set(y->fvar_2, x->fvar_2);
        if (x->htbl != NULL){
            basic_bellman_ford__flattened_funtype_3_htbl_t new_htbl = (basic_bellman_ford__flattened_funtype_3_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_3_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened_funtype_3_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_3_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_3_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_3_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}

void release_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened_funtype_5_t copy_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_htbl_t htbl, mpz_ptr_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened_funtype_5_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        int64_t tmp4105 = mpz_cmp_ui(data.key, 0);
        keyzero = (tmp4105 == 0);
        bool_t keymatch;
        int64_t tmp4106 = mpz_cmp(data.key, i);
        keymatch = (tmp4106 == 0);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                int64_t tmp4105 = mpz_cmp_ui(data.key, 0);
                keyzero = (tmp4105 == 0);

                int64_t tmp4106 = mpz_cmp(data.key, i);
                keymatch = (tmp4106 == 0);
                }
        return hashindex;
        }

basic_bellman_ford__flattened_funtype_5_t dupdate_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t a, mpz_ptr_t i, basic_bellman_ford__flattened_record_0_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_funtype_5_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened_funtype_5_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_5_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened_funtype_5_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened_funtype_5_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){mpz_init(htbl->data[j].key);mpz_set_ui(htbl->data[j].key, 0); htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened_funtype_5_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened_funtype_5_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_5_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened_funtype_5_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        int64_t tmp4107 = mpz_cmp_ui(data[j].key, 0);keyzero = (tmp4107 == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                int64_t tmp4108 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                keyzero = (tmp4108 == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        int64_t tmp4109 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                        keyzero = (tmp4109 == 0);
                                }
                                mpz_set(new_data[new_loc].key, data[j].key);
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened_record_0_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = mpz_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened_funtype_5(htbl, i, ihash);
        basic_bellman_ford__flattened_funtype_5_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        int64_t tmp4110 = mpz_cmp_ui(hentry.key, 0);hentrykeyzero = (tmp4110 == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {mpz_set(htbl->data[hashindex].key, i); htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened_record_0_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened_record_0_t tempvalue;tempvalue = (basic_bellman_ford__flattened_record_0_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened_record_0_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened_record_0(tempvalue, basic_bellman_ford__flattened__N);};
        return a;

}

basic_bellman_ford__flattened_funtype_5_t update_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t a, mpz_ptr_t i, basic_bellman_ford__flattened_record_0_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened_funtype_5(a, i, v, basic_bellman_ford__flattened__N);
            } else {
                basic_bellman_ford__flattened_funtype_5_t x = copy_basic_bellman_ford__flattened_funtype_5(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened_funtype_5(x, i, v, basic_bellman_ford__flattened__N);
            }}

bool_t equal_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t x, basic_bellman_ford__flattened_funtype_5_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        return false;}

char* json_basic_bellman_ford__flattened_funtype_5(basic_bellman_ford__flattened_funtype_5_t x, mpz_ptr_t basic_bellman_ford__flattened__N){char * result = safe_malloc(49); sprintf(result, "%s", "\"basic_bellman_ford__flattened_funtype_5\""); return result;}

void release_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened_funtype_6_t copy_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_htbl_t htbl, mpz_ptr_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened_funtype_6_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        int64_t tmp4111 = mpz_cmp_ui(data.key, 0);
        keyzero = (tmp4111 == 0);
        bool_t keymatch;
        int64_t tmp4112 = mpz_cmp(data.key, i);
        keymatch = (tmp4112 == 0);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                int64_t tmp4111 = mpz_cmp_ui(data.key, 0);
                keyzero = (tmp4111 == 0);

                int64_t tmp4112 = mpz_cmp(data.key, i);
                keymatch = (tmp4112 == 0);
                }
        return hashindex;
        }

basic_bellman_ford__flattened_funtype_6_t dupdate_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t a, mpz_ptr_t i, basic_bellman_ford__flattened_funtype_5_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_funtype_6_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened_funtype_6_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_6_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened_funtype_6_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened_funtype_6_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){mpz_init(htbl->data[j].key);mpz_set_ui(htbl->data[j].key, 0); htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened_funtype_6_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened_funtype_6_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_6_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened_funtype_6_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        int64_t tmp4113 = mpz_cmp_ui(data[j].key, 0);keyzero = (tmp4113 == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                int64_t tmp4114 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                keyzero = (tmp4114 == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        int64_t tmp4115 = mpz_cmp_ui(new_data[new_loc].key, 0);
                                        keyzero = (tmp4115 == 0);
                                }
                                mpz_set(new_data[new_loc].key, data[j].key);
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened_funtype_5_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = mpz_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened_funtype_6(htbl, i, ihash);
        basic_bellman_ford__flattened_funtype_6_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        int64_t tmp4116 = mpz_cmp_ui(hentry.key, 0);hentrykeyzero = (tmp4116 == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {mpz_set(htbl->data[hashindex].key, i); htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened_funtype_5_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened_funtype_5_t tempvalue;tempvalue = (basic_bellman_ford__flattened_funtype_5_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened_funtype_5_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened_funtype_5(tempvalue, basic_bellman_ford__flattened__N);};
        return a;

}

basic_bellman_ford__flattened_funtype_6_t update_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t a, mpz_ptr_t i, basic_bellman_ford__flattened_funtype_5_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened_funtype_6(a, i, v, basic_bellman_ford__flattened__N);
            } else {
                basic_bellman_ford__flattened_funtype_6_t x = copy_basic_bellman_ford__flattened_funtype_6(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened_funtype_6(x, i, v, basic_bellman_ford__flattened__N);
            }}

bool_t equal_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t x, basic_bellman_ford__flattened_funtype_6_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        return false;}

char* json_basic_bellman_ford__flattened_funtype_6(basic_bellman_ford__flattened_funtype_6_t x, mpz_ptr_t basic_bellman_ford__flattened__N){char * result = safe_malloc(49); sprintf(result, "%s", "\"basic_bellman_ford__flattened_funtype_6\""); return result;}

void release_basic_bellman_ford__flattened_funtype_7(basic_bellman_ford__flattened_funtype_7_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened_funtype_7_t copy_basic_bellman_ford__flattened_funtype_7(basic_bellman_ford__flattened_funtype_7_t x){return x->ftbl->cptr(x);}

bool_t equal_basic_bellman_ford__flattened_funtype_7(basic_bellman_ford__flattened_funtype_7_t x, basic_bellman_ford__flattened_funtype_7_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        return false;}

char* json_basic_bellman_ford__flattened_funtype_7(basic_bellman_ford__flattened_funtype_7_t x, mpz_ptr_t basic_bellman_ford__flattened__N){char * result = safe_malloc(49); sprintf(result, "%s", "\"basic_bellman_ford__flattened_funtype_7\""); return result;}


basic_bellman_ford__flattened_funtype_3_t f_basic_bellman_ford__flattened_closure_8(struct basic_bellman_ford__flattened_closure_8_s * closure, basic_bellman_ford__flattened_funtype_3_t bvar){
        basic_bellman_ford__flattened_funtype_3_t result = h_basic_bellman_ford__flattened_closure_8(bvar, closure->fvar_1, closure->fvar_2); 
        return result;}

basic_bellman_ford__flattened_funtype_3_t m_basic_bellman_ford__flattened_closure_8(struct basic_bellman_ford__flattened_closure_8_s * closure, basic_bellman_ford__flattened_funtype_3_t bvar){
        return h_basic_bellman_ford__flattened_closure_8(bvar, closure->fvar_1, closure->fvar_2);}

basic_bellman_ford__flattened_funtype_3_t h_basic_bellman_ford__flattened_closure_8(basic_bellman_ford__flattened_funtype_3_t ivar_7, mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1){
        basic_bellman_ford__flattened_funtype_3_t result;
        mpz_ptr_t ivar_24;
        uint8_t ivar_15;
        ivar_15 = (uint8_t)1;
        mpz_mk_sub_ui(ivar_24, basic_bellman_ford__flattened__N, (uint64_t)ivar_15);
        ivar_1->count++;
        result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__vertex_round_serial_rec((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_7, (mpz_ptr_t)ivar_24);

        return result;
}

basic_bellman_ford__flattened_closure_8_t new_basic_bellman_ford__flattened_closure_8(void){
        static struct basic_bellman_ford__flattened_funtype_7_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_7_t, basic_bellman_ford__flattened_funtype_3_t))&f_basic_bellman_ford__flattened_closure_8, .mptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_7_t, basic_bellman_ford__flattened_funtype_3_t))&m_basic_bellman_ford__flattened_closure_8, .rptr =  (void (*)(basic_bellman_ford__flattened_funtype_7_t))&release_basic_bellman_ford__flattened_closure_8, .cptr = (basic_bellman_ford__flattened_funtype_7_t (*)(basic_bellman_ford__flattened_funtype_7_t))&copy_basic_bellman_ford__flattened_closure_8};
        basic_bellman_ford__flattened_closure_8_t tmp = (basic_bellman_ford__flattened_closure_8_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_closure_8_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        mpz_init(tmp->fvar_1);
        return tmp;}

void release_basic_bellman_ford__flattened_closure_8(basic_bellman_ford__flattened_funtype_7_t closure, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_closure_8_t x = (basic_bellman_ford__flattened_closure_8_t)closure;
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened_funtype_6(x->fvar_2, basic_bellman_ford__flattened__N);
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened_closure_8_t copy_basic_bellman_ford__flattened_closure_8(basic_bellman_ford__flattened_closure_8_t x){
        basic_bellman_ford__flattened_closure_8_t y = new_basic_bellman_ford__flattened_closure_8();
        y->ftbl = x->ftbl;

        mpz_set(y->fvar_1, x->fvar_1);
        y->fvar_2 = x->fvar_2; x->fvar_2->count++;
        if (x->htbl != NULL){
            basic_bellman_ford__flattened_funtype_7_htbl_t new_htbl = (basic_bellman_ford__flattened_funtype_7_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_7_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened_funtype_7_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_7_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_7_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_7_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened_funtype_3_t f_basic_bellman_ford__flattened_closure_9(struct basic_bellman_ford__flattened_closure_9_s * closure, basic_bellman_ford__flattened_funtype_3_t bvar){
        basic_bellman_ford__flattened_funtype_3_t result = h_basic_bellman_ford__flattened_closure_9(bvar, closure->fvar_1, closure->fvar_2); 
        return result;}

basic_bellman_ford__flattened_funtype_3_t m_basic_bellman_ford__flattened_closure_9(struct basic_bellman_ford__flattened_closure_9_s * closure, basic_bellman_ford__flattened_funtype_3_t bvar){
        return h_basic_bellman_ford__flattened_closure_9(bvar, closure->fvar_1, closure->fvar_2);}

basic_bellman_ford__flattened_funtype_3_t h_basic_bellman_ford__flattened_closure_9(basic_bellman_ford__flattened_funtype_3_t ivar_7, mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1){
        basic_bellman_ford__flattened_funtype_3_t result;
        mpz_ptr_t ivar_27;
        uint8_t ivar_16;
        ivar_16 = (uint8_t)1;
        mpz_mk_sub_ui(ivar_27, basic_bellman_ford__flattened__N, (uint64_t)ivar_16);
        ivar_1->count++;
        ivar_7->count++;
        result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__vertex_round_parallel_rec((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_7, (basic_bellman_ford__flattened_funtype_3_t)ivar_7, (mpz_ptr_t)ivar_27);

        return result;
}

basic_bellman_ford__flattened_closure_9_t new_basic_bellman_ford__flattened_closure_9(void){
        static struct basic_bellman_ford__flattened_funtype_7_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_7_t, basic_bellman_ford__flattened_funtype_3_t))&f_basic_bellman_ford__flattened_closure_9, .mptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_7_t, basic_bellman_ford__flattened_funtype_3_t))&m_basic_bellman_ford__flattened_closure_9, .rptr =  (void (*)(basic_bellman_ford__flattened_funtype_7_t))&release_basic_bellman_ford__flattened_closure_9, .cptr = (basic_bellman_ford__flattened_funtype_7_t (*)(basic_bellman_ford__flattened_funtype_7_t))&copy_basic_bellman_ford__flattened_closure_9};
        basic_bellman_ford__flattened_closure_9_t tmp = (basic_bellman_ford__flattened_closure_9_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_closure_9_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        mpz_init(tmp->fvar_1);
        return tmp;}

void release_basic_bellman_ford__flattened_closure_9(basic_bellman_ford__flattened_funtype_7_t closure, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_closure_9_t x = (basic_bellman_ford__flattened_closure_9_t)closure;
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened_funtype_6(x->fvar_2, basic_bellman_ford__flattened__N);
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened_closure_9_t copy_basic_bellman_ford__flattened_closure_9(basic_bellman_ford__flattened_closure_9_t x){
        basic_bellman_ford__flattened_closure_9_t y = new_basic_bellman_ford__flattened_closure_9();
        y->ftbl = x->ftbl;

        mpz_set(y->fvar_1, x->fvar_1);
        y->fvar_2 = x->fvar_2; x->fvar_2->count++;
        if (x->htbl != NULL){
            basic_bellman_ford__flattened_funtype_7_htbl_t new_htbl = (basic_bellman_ford__flattened_funtype_7_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_7_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened_funtype_7_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_7_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_7_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_7_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened_record_10_t new_basic_bellman_ford__flattened_record_10(void){
        basic_bellman_ford__flattened_record_10_t tmp = (basic_bellman_ford__flattened_record_10_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_record_10_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened_record_10(basic_bellman_ford__flattened_record_10_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened_funtype_6(x->project_1, basic_bellman_ford__flattened__N);
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened_record_10_ptr(pointer_t x, type_actual_t T){
        actual_basic_bellman_ford__flattened_record_10_t actual = (actual_basic_bellman_ford__flattened_record_10_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        release_basic_bellman_ford__flattened_record_10((basic_bellman_ford__flattened_record_10_t)x, basic_bellman_ford__flattened__N);
}

basic_bellman_ford__flattened_record_10_t copy_basic_bellman_ford__flattened_record_10(basic_bellman_ford__flattened_record_10_t x){
        basic_bellman_ford__flattened_record_10_t y = new_basic_bellman_ford__flattened_record_10();
        y->project_1 = x->project_1;
        if (y->project_1 != NULL){y->project_1->count++;};
        mpz_set(y->project_2, x->project_2);
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened_record_10(basic_bellman_ford__flattened_record_10_t x, basic_bellman_ford__flattened_record_10_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        bool_t tmp = true;
        tmp = tmp && equal_basic_bellman_ford__flattened_funtype_6(x->project_1, y->project_1, basic_bellman_ford__flattened__N);tmp = tmp && (mpz_cmp(x->project_2, y->project_2) == 0);
        return tmp;}

char * json_basic_bellman_ford__flattened_record_10(basic_bellman_ford__flattened_record_10_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        char * tmp[2]; 
        char * fld0 = safe_malloc(21);
         sprintf(fld0, "\"project_1\" : ");
        tmp[0] = safe_strcat(fld0, json_basic_bellman_ford__flattened_funtype_6(x->project_1, basic_bellman_ford__flattened__N));
        char * fld1 = safe_malloc(21);
         sprintf(fld1, "\"project_2\" : ");
        tmp[1] = safe_strcat(fld1, json_mpz(x->project_2));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened_record_10_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened_record_10_t T){
        actual_basic_bellman_ford__flattened_record_10_t actual = (actual_basic_bellman_ford__flattened_record_10_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return equal_basic_bellman_ford__flattened_record_10((basic_bellman_ford__flattened_record_10_t)x, (basic_bellman_ford__flattened_record_10_t)y, basic_bellman_ford__flattened__N);
}

char * json_basic_bellman_ford__flattened_record_10_ptr(pointer_t x, actual_basic_bellman_ford__flattened_record_10_t T){
        actual_basic_bellman_ford__flattened_record_10_t actual = (actual_basic_bellman_ford__flattened_record_10_t)T;
        mpz_ptr_t basic_bellman_ford__flattened__N = actual->basic_bellman_ford__flattened__N;
        return json_basic_bellman_ford__flattened_record_10((basic_bellman_ford__flattened_record_10_t)x, basic_bellman_ford__flattened__N);
}

actual_basic_bellman_ford__flattened_record_10_t actual_basic_bellman_ford__flattened_record_10(mpz_ptr_t basic_bellman_ford__flattened__N){
        actual_basic_bellman_ford__flattened_record_10_t new = (actual_basic_bellman_ford__flattened_record_10_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened_record_10_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened_record_10_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened_record_10_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened_record_10_ptr);
 

        new->basic_bellman_ford__flattened__N = basic_bellman_ford__flattened__N;
 
        return new;
 };

basic_bellman_ford__flattened_record_10_t update_basic_bellman_ford__flattened_record_10_project_1(basic_bellman_ford__flattened_record_10_t x, basic_bellman_ford__flattened_funtype_6_t v, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_record_10_t y;
        if (v != NULL){v->count++;};
        if (x->count == 1){y = x; if (x->project_1 != NULL){release_basic_bellman_ford__flattened_funtype_6(x->project_1, basic_bellman_ford__flattened__N);};}
        else {y = copy_basic_bellman_ford__flattened_record_10(x); x->count--; y->project_1->count--;};
        y->project_1 = (basic_bellman_ford__flattened_funtype_6_t)v;
        return y;}

basic_bellman_ford__flattened_record_10_t update_basic_bellman_ford__flattened_record_10_project_2(basic_bellman_ford__flattened_record_10_t x, mpz_ptr_t v){
        basic_bellman_ford__flattened_record_10_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened_record_10(x); x->count--;};
        mpz_set(y->project_2, v);
        return y;}



void release_basic_bellman_ford__flattened_funtype_11(basic_bellman_ford__flattened_funtype_11_t x, mpz_ptr_t basic_bellman_ford__flattened__N){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened_funtype_11_t copy_basic_bellman_ford__flattened_funtype_11(basic_bellman_ford__flattened_funtype_11_t x){return x->ftbl->cptr(x);}

bool_t equal_basic_bellman_ford__flattened_funtype_11(basic_bellman_ford__flattened_funtype_11_t x, basic_bellman_ford__flattened_funtype_11_t y, mpz_ptr_t basic_bellman_ford__flattened__N){
        return false;}

char* json_basic_bellman_ford__flattened_funtype_11(basic_bellman_ford__flattened_funtype_11_t x, mpz_ptr_t basic_bellman_ford__flattened__N){char * result = safe_malloc(50); sprintf(result, "%s", "\"basic_bellman_ford__flattened_funtype_11\""); return result;}


basic_bellman_ford__flattened_funtype_3_t f_basic_bellman_ford__flattened_closure_12(struct basic_bellman_ford__flattened_closure_12_s * closure, basic_bellman_ford__flattened_record_10_t bvar){
        basic_bellman_ford__flattened_funtype_6_t bvar_1;
        bvar_1 = (basic_bellman_ford__flattened_funtype_6_t)bvar->project_1;
        bvar->project_1->count++;
        mpz_t bvar_2;
        mpz_init(bvar_2);
        mpz_set(bvar_2, bvar->project_2);
        release_basic_bellman_ford__flattened_record_10(bvar, basic_bellman_ford__flattened__N);
        basic_bellman_ford__flattened_funtype_3_t result = h_basic_bellman_ford__flattened_closure_12(bvar_1, bvar_2, closure->fvar_1, closure->fvar_2); 
        release_basic_bellman_ford__flattened_funtype_6(bvar_1);
        release_mpz(bvar_2);
        return result;}

basic_bellman_ford__flattened_funtype_3_t m_basic_bellman_ford__flattened_closure_12(struct basic_bellman_ford__flattened_closure_12_s * closure, basic_bellman_ford__flattened_funtype_6_t bvar_1, mpz_ptr_t bvar_2){
        return h_basic_bellman_ford__flattened_closure_12(bvar_1, bvar_2, closure->fvar_1, closure->fvar_2);}

basic_bellman_ford__flattened_funtype_3_t h_basic_bellman_ford__flattened_closure_12(basic_bellman_ford__flattened_funtype_6_t ivar_9, mpz_ptr_t ivar_12, mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_7_t ivar_1){
        basic_bellman_ford__flattened_funtype_3_t result;
        basic_bellman_ford__flattened_funtype_3_t ivar_36;
        ivar_36 = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__Init((mpz_ptr_t)basic_bellman_ford__flattened__N, (mpz_ptr_t)ivar_12);
        mpz_ptr_t ivar_42;
        uint8_t ivar_26;
        ivar_26 = (uint8_t)1;
        mpz_mk_sub_ui(ivar_42, basic_bellman_ford__flattened__N, (uint64_t)ivar_26);
        ivar_1->count++;
        result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__Bellman_Ford_wrap_rec((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_9, (mpz_ptr_t)ivar_12, (basic_bellman_ford__flattened_funtype_3_t)ivar_36, (basic_bellman_ford__flattened_funtype_7_t)ivar_1, (mpz_ptr_t)ivar_42);

        return result;
}

basic_bellman_ford__flattened_closure_12_t new_basic_bellman_ford__flattened_closure_12(void){
        static struct basic_bellman_ford__flattened_funtype_11_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_11_t, basic_bellman_ford__flattened_record_10_t))&f_basic_bellman_ford__flattened_closure_12, .mptr = (basic_bellman_ford__flattened_funtype_3_t (*)(basic_bellman_ford__flattened_funtype_11_t, basic_bellman_ford__flattened_funtype_6_t, mpz_ptr_t))&m_basic_bellman_ford__flattened_closure_12, .rptr =  (void (*)(basic_bellman_ford__flattened_funtype_11_t))&release_basic_bellman_ford__flattened_closure_12, .cptr = (basic_bellman_ford__flattened_funtype_11_t (*)(basic_bellman_ford__flattened_funtype_11_t))&copy_basic_bellman_ford__flattened_closure_12};
        basic_bellman_ford__flattened_closure_12_t tmp = (basic_bellman_ford__flattened_closure_12_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_closure_12_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        mpz_init(tmp->fvar_1);
        return tmp;}

void release_basic_bellman_ford__flattened_closure_12(basic_bellman_ford__flattened_funtype_11_t closure, mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_closure_12_t x = (basic_bellman_ford__flattened_closure_12_t)closure;
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened_funtype_7(x->fvar_2, basic_bellman_ford__flattened__N);
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened_closure_12_t copy_basic_bellman_ford__flattened_closure_12(basic_bellman_ford__flattened_closure_12_t x){
        basic_bellman_ford__flattened_closure_12_t y = new_basic_bellman_ford__flattened_closure_12();
        y->ftbl = x->ftbl;

        mpz_set(y->fvar_1, x->fvar_1);
        y->fvar_2 = x->fvar_2; x->fvar_2->count++;
        if (x->htbl != NULL){
            basic_bellman_ford__flattened_funtype_11_htbl_t new_htbl = (basic_bellman_ford__flattened_funtype_11_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened_funtype_11_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened_funtype_11_hashentry_t * new_data = (basic_bellman_ford__flattened_funtype_11_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_11_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened_funtype_11_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__inf(mpz_ptr_t basic_bellman_ford__flattened__N){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_1;
        ivar_1 = (bool_t) false;
        uint8_t ivar_2;
        ivar_2 = (uint8_t)0;
        basic_bellman_ford__flattened_record_1_t tmp3723 = new_basic_bellman_ford__flattened_record_1();;
        result = (basic_bellman_ford__flattened_record_0_t)tmp3723;
        tmp3723->project_1 = (bool_t)ivar_1;
        tmp3723->project_2 = (uint8_t)ivar_2;

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__r2er(mpz_ptr_t basic_bellman_ford__flattened__N, mpq_ptr_t ivar_1){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_2;
        ivar_2 = (bool_t) true;
        mpq_ptr_t ivar_3;
        //copying to mpq from mpq;
        mpq_mk_set(ivar_3, ivar_1);
        basic_bellman_ford__flattened_record_0_t tmp3728 = new_basic_bellman_ford__flattened_record_0();;
        result = (basic_bellman_ford__flattened_record_0_t)tmp3728;
        tmp3728->project_1 = (bool_t)ivar_2;
        mpq_init(tmp3728->project_2);
        mpq_set(tmp3728->project_2, ivar_3);
        mpq_clear(ivar_3);

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__x_add__1(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_3;
        bool_t ivar_4;
        ivar_4 = (bool_t)ivar_1->project_1;
        if (ivar_4){ 
             ivar_3 = (bool_t)ivar_2->project_1;
} else {
        
             ivar_3 = (bool_t) false;
};
        if (ivar_3){ 
             bool_t ivar_14;
             ivar_14 = (bool_t) true;
             mpq_ptr_t ivar_15;
             mpq_ptr_t ivar_9;
             ivar_9 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_9);
             mpq_set(ivar_9, ivar_1->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             mpq_ptr_t ivar_10;
             ivar_10 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_10);
             mpq_set(ivar_10, ivar_2->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             mpq_mk_set(ivar_15, ivar_9);
             mpq_add(ivar_15, ivar_15, ivar_10);
             basic_bellman_ford__flattened_record_0_t tmp3747 = new_basic_bellman_ford__flattened_record_0();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3747;
             tmp3747->project_1 = (bool_t)ivar_14;
             mpq_init(tmp3747->project_2);
             mpq_set(tmp3747->project_2, ivar_15);
             mpq_clear(ivar_15);
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             bool_t ivar_16;
             ivar_16 = (bool_t) false;
             uint8_t ivar_17;
             ivar_17 = (uint8_t)0;
             basic_bellman_ford__flattened_record_1_t tmp3748 = new_basic_bellman_ford__flattened_record_1();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3748;
             tmp3748->project_1 = (bool_t)ivar_16;
             tmp3748->project_2 = (uint8_t)ivar_17;
};

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__x_add__2(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, mpq_ptr_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_3;
        ivar_3 = (bool_t)ivar_1->project_1;
        if (ivar_3){ 
             bool_t ivar_9;
             ivar_9 = (bool_t) true;
             mpq_ptr_t ivar_10;
             mpq_ptr_t ivar_5;
             ivar_5 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_5);
             mpq_set(ivar_5, ivar_1->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             mpq_ptr_t ivar_6;
             //copying to mpq from mpq;
             mpq_mk_set(ivar_6, ivar_2);
             mpq_mk_set(ivar_10, ivar_5);
             mpq_add(ivar_10, ivar_10, ivar_6);
             basic_bellman_ford__flattened_record_0_t tmp3761 = new_basic_bellman_ford__flattened_record_0();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3761;
             tmp3761->project_1 = (bool_t)ivar_9;
             mpq_init(tmp3761->project_2);
             mpq_set(tmp3761->project_2, ivar_10);
             mpq_clear(ivar_10);
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             bool_t ivar_11;
             ivar_11 = (bool_t) false;
             uint8_t ivar_12;
             ivar_12 = (uint8_t)0;
             basic_bellman_ford__flattened_record_1_t tmp3762 = new_basic_bellman_ford__flattened_record_1();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3762;
             tmp3762->project_1 = (bool_t)ivar_11;
             tmp3762->project_2 = (uint8_t)ivar_12;
};

        
        return result;
}

bool_t basic_bellman_ford__flattened__x_eq__1(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        bool_t ivar_3;
        bool_t ivar_5;
        ivar_5 = (bool_t)ivar_1->project_1;
        bool_t ivar_6;
        ivar_6 = (bool_t)ivar_2->project_1;
        ivar_3 = (bool_t) equal_bool(ivar_5, ivar_6, basic_bellman_ford__flattened__N);
        if (ivar_3){ 
             bool_t ivar_10;
             ivar_10 = (bool_t)ivar_1->project_1;
             if (ivar_10){  
           mpq_ptr_t ivar_13;
           ivar_13 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_13);
           mpq_set(ivar_13, ivar_1->project_2);
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           mpq_ptr_t ivar_14;
           ivar_14 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_14);
           mpq_set(ivar_14, ivar_2->project_2);
           release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
           int64_t tmp3777 = mpq_cmp(ivar_13, ivar_14);
           result = (tmp3777 == 0);
} else {
             
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
           result = (bool_t) true;
};
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             result = (bool_t) false;
};

        
        return result;
}

bool_t basic_bellman_ford__flattened__x_le(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        bool_t ivar_3;
        bool_t ivar_5;
        ivar_5 = (bool_t)ivar_1->project_1;
        if (ivar_5){ 
             bool_t ivar_8;
             ivar_8 = (bool_t)ivar_2->project_1;
             if (ivar_8){  
           mpq_ptr_t ivar_11;
           ivar_11 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_11);
           mpq_set(ivar_11, ivar_1->project_2);
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           mpq_ptr_t ivar_12;
           ivar_12 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_12);
           mpq_set(ivar_12, ivar_2->project_2);
           int64_t tmp3792 = mpq_cmp(ivar_11, ivar_12);
           ivar_3 = (tmp3792 <= 0);
} else {
             
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           ivar_3 = (bool_t) false;
};
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             ivar_3 = (bool_t) false;
};
        if (ivar_3){ 
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             result = (bool_t) true;
} else {
        
             bool_t ivar_18;
             ivar_18 = (bool_t)ivar_2->project_1;
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             result = !ivar_18;
};

        
        return result;
}

bool_t basic_bellman_ford__flattened__x_lt(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        bool_t ivar_3;
        bool_t ivar_5;
        ivar_5 = (bool_t)ivar_1->project_1;
        if (ivar_5){ 
             bool_t ivar_8;
             ivar_8 = (bool_t)ivar_2->project_1;
             if (ivar_8){  
           mpq_ptr_t ivar_11;
           ivar_11 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_11);
           mpq_set(ivar_11, ivar_1->project_2);
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           mpq_ptr_t ivar_12;
           ivar_12 = safe_malloc(sizeof(mpq_t));
           mpq_init(ivar_12);
           mpq_set(ivar_12, ivar_2->project_2);
           int64_t tmp3807 = mpq_cmp(ivar_11, ivar_12);
           ivar_3 = (tmp3807 < 0);
} else {
             
           release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
           ivar_3 = (bool_t) false;
};
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             ivar_3 = (bool_t) false;
};
        if (ivar_3){ 
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             result = (bool_t) true;
} else {
        
             bool_t ivar_18;
             ivar_18 = (bool_t)ivar_2->project_1;
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             result = !ivar_18;
};

        
        return result;
}

bool_t basic_bellman_ford__flattened__x_eq__2(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, mpq_ptr_t ivar_2){
        bool_t  result;
        bool_t ivar_3;
        ivar_3 = (bool_t)ivar_1->project_1;
        if (ivar_3){ 
             mpq_ptr_t ivar_6;
             ivar_6 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_6);
             mpq_set(ivar_6, ivar_1->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             mpq_ptr_t ivar_7;
             //copying to mpq from mpq;
             mpq_mk_set(ivar_7, ivar_2);
             int64_t tmp3814 = mpq_cmp(ivar_6, ivar_7);
             result = (tmp3814 == 0);
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             result = (bool_t) false;
};

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__x_times__1(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_3;
        bool_t ivar_4;
        bool_t ivar_6;
        ivar_6 = (bool_t)ivar_1->project_1;
        if (ivar_6){ 
             ivar_4 = (bool_t)ivar_2->project_1;
} else {
        
             ivar_4 = (bool_t) false;
};
        if (ivar_4){ 
             ivar_3 = (bool_t) true;
} else {
        
             bool_t ivar_11;
             uint8_t ivar_19;
             ivar_19 = (uint8_t)0;
             mpq_ptr_t ivar_18;
             //copying to mpq from uint8;
             mpq_mk_set_ui(ivar_18, ivar_19);
             ivar_1->count++;
             ivar_11 = (bool_t)basic_bellman_ford__flattened__x_eq__2((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_1, (mpq_ptr_t)ivar_18);
             if (ivar_11){  
           ivar_3 = (bool_t) true;
} else {
             
           uint8_t ivar_26;
           ivar_26 = (uint8_t)0;
           mpq_ptr_t ivar_25;
           //copying to mpq from uint8;
           mpq_mk_set_ui(ivar_25, ivar_26);
           ivar_2->count++;
           ivar_3 = (bool_t)basic_bellman_ford__flattened__x_eq__2((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_2, (mpq_ptr_t)ivar_25);
};
};
        if (ivar_3){ 
             bool_t ivar_34;
             ivar_34 = (bool_t) true;
             mpq_ptr_t ivar_35;
             mpq_ptr_t ivar_29;
             ivar_29 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_29);
             mpq_set(ivar_29, ivar_1->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             mpq_ptr_t ivar_30;
             ivar_30 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_30);
             mpq_set(ivar_30, ivar_2->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             mpq_mk_mul(ivar_35, ivar_29, ivar_30);
             basic_bellman_ford__flattened_record_0_t tmp3837 = new_basic_bellman_ford__flattened_record_0();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3837;
             tmp3837->project_1 = (bool_t)ivar_34;
             mpq_init(tmp3837->project_2);
             mpq_set(tmp3837->project_2, ivar_35);
             mpq_clear(ivar_35);
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_2, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             bool_t ivar_36;
             ivar_36 = (bool_t) false;
             uint8_t ivar_37;
             ivar_37 = (uint8_t)0;
             basic_bellman_ford__flattened_record_1_t tmp3838 = new_basic_bellman_ford__flattened_record_1();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3838;
             tmp3838->project_1 = (bool_t)ivar_36;
             tmp3838->project_2 = (uint8_t)ivar_37;
};

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__x_times__2(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, mpq_ptr_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        bool_t ivar_3;
        bool_t ivar_4;
        ivar_4 = (bool_t)ivar_1->project_1;
        if (ivar_4){ 
             ivar_3 = (bool_t) true;
} else {
        
             mpq_ptr_t ivar_7;
             //copying to mpq from mpq;
             mpq_mk_set(ivar_7, ivar_2);
             uint8_t ivar_8;
             ivar_8 = (uint8_t)0;
             int64_t tmp3851 = mpq_cmp_ui(ivar_7, ivar_8, 1);
             ivar_3 = (tmp3851 == 0);
};
        if (ivar_3){ 
             bool_t ivar_15;
             ivar_15 = (bool_t) true;
             mpq_ptr_t ivar_16;
             mpq_ptr_t ivar_11;
             ivar_11 = safe_malloc(sizeof(mpq_t));
             mpq_init(ivar_11);
             mpq_set(ivar_11, ivar_1->project_2);
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             mpq_ptr_t ivar_12;
             //copying to mpq from mpq;
             mpq_mk_set(ivar_12, ivar_2);
             mpq_mk_mul(ivar_16, ivar_11, ivar_12);
             basic_bellman_ford__flattened_record_0_t tmp3852 = new_basic_bellman_ford__flattened_record_0();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3852;
             tmp3852->project_1 = (bool_t)ivar_15;
             mpq_init(tmp3852->project_2);
             mpq_set(tmp3852->project_2, ivar_16);
             mpq_clear(ivar_16);
} else {
        
             release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);
             bool_t ivar_17;
             ivar_17 = (bool_t) false;
             uint8_t ivar_18;
             ivar_18 = (uint8_t)0;
             basic_bellman_ford__flattened_record_1_t tmp3853 = new_basic_bellman_ford__flattened_record_1();;
             result = (basic_bellman_ford__flattened_record_0_t)tmp3853;
             tmp3853->project_1 = (bool_t)ivar_17;
             tmp3853->project_2 = (uint8_t)ivar_18;
};

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__x_times__3(mpz_ptr_t basic_bellman_ford__flattened__N, mpq_ptr_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        mpq_ptr_t ivar_8;
        //copying to mpq from mpq;
        mpq_mk_set(ivar_8, ivar_1);
        result = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__x_times__2((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_2, (mpq_ptr_t)ivar_8);

        
        return result;
}

bool_t basic_bellman_ford__flattened__equal(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        result = (bool_t)basic_bellman_ford__flattened__x_eq__1((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_1, (basic_bellman_ford__flattened_record_0_t)ivar_2);

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__plus(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        result = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__x_add__1((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_1, (basic_bellman_ford__flattened_record_0_t)ivar_2);

        
        return result;
}

basic_bellman_ford__flattened_record_0_t basic_bellman_ford__flattened__times(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        basic_bellman_ford__flattened_record_0_t  result;
        result = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__x_times__1((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_1, (basic_bellman_ford__flattened_record_0_t)ivar_2);

        
        return result;
}

bool_t basic_bellman_ford__flattened__lesseqp(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        result = (bool_t)basic_bellman_ford__flattened__x_le((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_1, (basic_bellman_ford__flattened_record_0_t)ivar_2);

        
        return result;
}

bool_t basic_bellman_ford__flattened__lessp(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1, basic_bellman_ford__flattened_record_0_t ivar_2){
        bool_t  result;
        bool_t ivar_3;
        ivar_3 = (bool_t)basic_bellman_ford__flattened__x_le((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_2, (basic_bellman_ford__flattened_record_0_t)ivar_1);
        result = !ivar_3;

        
        return result;
}

bool_t basic_bellman_ford__flattened__finitep(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_record_0_t ivar_1){
        bool_t  result;
        result = (bool_t)ivar_1->project_1;
        release_basic_bellman_ford__flattened_record_0(ivar_1, basic_bellman_ford__flattened__N);

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__Init(mpz_ptr_t basic_bellman_ford__flattened__N, mpz_ptr_t ivar_1){
        basic_bellman_ford__flattened_funtype_3_t  result;
        basic_bellman_ford__flattened_closure_4_t cl3956;
        cl3956 = new_basic_bellman_ford__flattened_closure_4();
        mpz_set(cl3956->fvar_1, basic_bellman_ford__flattened__N);
        mpz_set(cl3956->fvar_2, ivar_1);
        result = (basic_bellman_ford__flattened_funtype_3_t)cl3956;

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__update_datum(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_3_t ivar_1, basic_bellman_ford__flattened_record_2_t ivar_3, mpz_ptr_t ivar_4){
        basic_bellman_ford__flattened_funtype_3_t  result;
        basic_bellman_ford__flattened_funtype_3_t ivar_11;
        basic_bellman_ford__flattened_record_2_t ivar_13;
        ivar_13 = NULL;
        ivar_11 = (basic_bellman_ford__flattened_funtype_3_t)update_basic_bellman_ford__flattened_funtype_3(ivar_1, ivar_4, ivar_13, basic_bellman_ford__flattened__N);
        if (ivar_13 != NULL) ivar_13->count--;
        result = (basic_bellman_ford__flattened_funtype_3_t)update_basic_bellman_ford__flattened_funtype_3(ivar_11, ivar_4, ivar_3, basic_bellman_ford__flattened__N);
        if (ivar_3 != NULL) ivar_3->count--;

        
        return result;
}

basic_bellman_ford__flattened_record_2_t basic_bellman_ford__flattened__update_edge(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, basic_bellman_ford__flattened_funtype_3_t ivar_4, basic_bellman_ford__flattened_record_2_t ivar_6, mpz_ptr_t ivar_7, mpz_ptr_t ivar_8){
        basic_bellman_ford__flattened_record_2_t  result;
        bool_t ivar_9;
        bool_t ivar_10;
        basic_bellman_ford__flattened_record_0_t ivar_40;
        ivar_40 = (basic_bellman_ford__flattened_record_0_t)ivar_6->w;
        ivar_40->count++;
        basic_bellman_ford__flattened_record_0_t ivar_41;
        basic_bellman_ford__flattened_record_0_t ivar_36;
        basic_bellman_ford__flattened_funtype_5_t ivar_19;
        ivar_19 = (basic_bellman_ford__flattened_funtype_5_t)ivar_1->ftbl->fptr(ivar_1, ivar_8);
        ivar_36 = (basic_bellman_ford__flattened_record_0_t)ivar_19->ftbl->fptr(ivar_19, ivar_7);
        ivar_19->ftbl->rptr(ivar_19);
        basic_bellman_ford__flattened_record_0_t ivar_37;
        basic_bellman_ford__flattened_record_2_t ivar_33;
        ivar_33 = (basic_bellman_ford__flattened_record_2_t)ivar_4->ftbl->fptr(ivar_4, ivar_8);
        ivar_37 = (basic_bellman_ford__flattened_record_0_t)ivar_33->w;
        ivar_37->count++;
        release_basic_bellman_ford__flattened_record_2(ivar_33, basic_bellman_ford__flattened__N);
        ivar_41 = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__x_add__1((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_36, (basic_bellman_ford__flattened_record_0_t)ivar_37);
        ivar_10 = (bool_t)basic_bellman_ford__flattened__x_le((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_40, (basic_bellman_ford__flattened_record_0_t)ivar_41);
        ivar_9 = !ivar_10;
        if (ivar_9){ 
             release_basic_bellman_ford__flattened_record_2(ivar_6, basic_bellman_ford__flattened__N);
             basic_bellman_ford__flattened_record_0_t ivar_68;
             basic_bellman_ford__flattened_record_0_t ivar_66;
             basic_bellman_ford__flattened_funtype_5_t ivar_49;
             ivar_49 = (basic_bellman_ford__flattened_funtype_5_t)ivar_1->ftbl->fptr(ivar_1, ivar_8);
             ivar_1->ftbl->rptr(ivar_1);
             ivar_66 = (basic_bellman_ford__flattened_record_0_t)ivar_49->ftbl->fptr(ivar_49, ivar_7);
             ivar_49->ftbl->rptr(ivar_49);
             basic_bellman_ford__flattened_record_0_t ivar_67;
             basic_bellman_ford__flattened_record_2_t ivar_63;
             ivar_63 = (basic_bellman_ford__flattened_record_2_t)ivar_4->ftbl->fptr(ivar_4, ivar_8);
             ivar_4->ftbl->rptr(ivar_4);
             ivar_67 = (basic_bellman_ford__flattened_record_0_t)ivar_63->w;
             ivar_67->count++;
             release_basic_bellman_ford__flattened_record_2(ivar_63, basic_bellman_ford__flattened__N);
             ivar_68 = (basic_bellman_ford__flattened_record_0_t)basic_bellman_ford__flattened__x_add__1((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_record_0_t)ivar_66, (basic_bellman_ford__flattened_record_0_t)ivar_67);
             basic_bellman_ford__flattened_record_2_t tmp4117 = new_basic_bellman_ford__flattened_record_2();;
             result = (basic_bellman_ford__flattened_record_2_t)tmp4117;
             mpz_init(tmp4117->pv);
             mpz_set(tmp4117->pv, ivar_8);
             mpz_clear(ivar_8);
             tmp4117->w = (basic_bellman_ford__flattened_record_0_t)ivar_68;
} else {
        
             release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_funtype_3(ivar_4, basic_bellman_ford__flattened__N);
             //copying to basic_bellman_ford__flattened_record_2 from basic_bellman_ford__flattened_record_2;
             result = (basic_bellman_ford__flattened_record_2_t)ivar_6;
             if (result != NULL) result->count++;
             release_basic_bellman_ford__flattened_record_2(ivar_6, basic_bellman_ford__flattened__N);
};

        
        return result;
}

basic_bellman_ford__flattened_record_2_t basic_bellman_ford__flattened__update_vertex_rec(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, basic_bellman_ford__flattened_funtype_3_t ivar_4, basic_bellman_ford__flattened_record_2_t ivar_6, mpz_ptr_t ivar_7, mpz_ptr_t ivar_8){
        basic_bellman_ford__flattened_record_2_t  result;
        /* new_Datum */ basic_bellman_ford__flattened_record_2_t ivar_9;
        ivar_1->count++;
        ivar_4->count++;
        ivar_9 = (basic_bellman_ford__flattened_record_2_t)basic_bellman_ford__flattened__update_edge((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (basic_bellman_ford__flattened_record_2_t)ivar_6, (mpz_ptr_t)ivar_7, (mpz_ptr_t)ivar_8);
        bool_t ivar_25;
        uint8_t ivar_27;
        ivar_27 = (uint8_t)0;
        int64_t tmp4199 = mpz_cmp_ui(ivar_8, ivar_27);
        ivar_25 = (tmp4199 == 0);
        if (ivar_25){ 
             release_basic_bellman_ford__flattened_funtype_3(ivar_4, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
             //copying to basic_bellman_ford__flattened_record_2 from basic_bellman_ford__flattened_record_2;
             result = (basic_bellman_ford__flattened_record_2_t)ivar_9;
             if (result != NULL) result->count++;
             release_basic_bellman_ford__flattened_record_2(ivar_9, basic_bellman_ford__flattened__N);
} else {
        
             mpz_ptr_t ivar_46;
             uint8_t ivar_35;
             ivar_35 = (uint8_t)1;
             mpz_mk_sub_ui(ivar_46, ivar_8, (uint64_t)ivar_35);
             result = (basic_bellman_ford__flattened_record_2_t)basic_bellman_ford__flattened__update_vertex_rec(basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (basic_bellman_ford__flattened_record_2_t)ivar_9, ivar_7, ivar_46);
};

        
        return result;
}

basic_bellman_ford__flattened_record_2_t basic_bellman_ford__flattened__update_vertex(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, basic_bellman_ford__flattened_funtype_3_t ivar_4, mpz_ptr_t ivar_6){
        basic_bellman_ford__flattened_record_2_t  result;
        basic_bellman_ford__flattened_record_2_t ivar_27;
        ivar_27 = (basic_bellman_ford__flattened_record_2_t)ivar_4->ftbl->fptr(ivar_4, ivar_6);
        mpz_ptr_t ivar_29;
        uint8_t ivar_18;
        ivar_18 = (uint8_t)1;
        mpz_mk_sub_ui(ivar_29, basic_bellman_ford__flattened__N, (uint64_t)ivar_18);
        result = (basic_bellman_ford__flattened_record_2_t)basic_bellman_ford__flattened__update_vertex_rec((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (basic_bellman_ford__flattened_record_2_t)ivar_27, (mpz_ptr_t)ivar_6, (mpz_ptr_t)ivar_29);

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__vertex_round_serial_rec(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, basic_bellman_ford__flattened_funtype_3_t ivar_4, mpz_ptr_t ivar_6){
        basic_bellman_ford__flattened_funtype_3_t  result;
        /* NewData */ basic_bellman_ford__flattened_funtype_3_t ivar_8;
        basic_bellman_ford__flattened_record_2_t ivar_31;
        ivar_1->count++;
        ivar_4->count++;
        ivar_31 = (basic_bellman_ford__flattened_record_2_t)basic_bellman_ford__flattened__update_vertex((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (mpz_ptr_t)ivar_6);
        ivar_8 = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__update_datum((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (basic_bellman_ford__flattened_record_2_t)ivar_31, (mpz_ptr_t)ivar_6);
        bool_t ivar_33;
        uint8_t ivar_35;
        ivar_35 = (uint8_t)0;
        int64_t tmp4351 = mpz_cmp_ui(ivar_6, ivar_35);
        ivar_33 = (tmp4351 == 0);
        if (ivar_33){ 
             release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
             //copying to basic_bellman_ford__flattened_funtype_3 from basic_bellman_ford__flattened_funtype_3;
             result = (basic_bellman_ford__flattened_funtype_3_t)ivar_8;
             if (result != NULL) result->count++;
             release_basic_bellman_ford__flattened_funtype_3(ivar_8, basic_bellman_ford__flattened__N);
} else {
        
             mpz_ptr_t ivar_52;
             uint8_t ivar_43;
             ivar_43 = (uint8_t)1;
             mpz_mk_sub_ui(ivar_52, ivar_6, (uint64_t)ivar_43);
             result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__vertex_round_serial_rec(basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_8, ivar_52);
};

        
        return result;
}

basic_bellman_ford__flattened_funtype_7_t basic_bellman_ford__flattened__vertex_round_serial(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1){
        basic_bellman_ford__flattened_funtype_7_t  result;
        basic_bellman_ford__flattened_closure_8_t cl4397;
        cl4397 = new_basic_bellman_ford__flattened_closure_8();
        mpz_set(cl4397->fvar_1, basic_bellman_ford__flattened__N);
        cl4397->fvar_2 = (basic_bellman_ford__flattened_funtype_6_t)ivar_1;
        if (cl4397->fvar_2 != NULL) cl4397->fvar_2->count++;
        release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
        result = (basic_bellman_ford__flattened_funtype_7_t)cl4397;

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__vertex_round_parallel_rec(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, basic_bellman_ford__flattened_funtype_3_t ivar_4, basic_bellman_ford__flattened_funtype_3_t ivar_6, mpz_ptr_t ivar_8){
        basic_bellman_ford__flattened_funtype_3_t  result;
        /* NewData */ basic_bellman_ford__flattened_funtype_3_t ivar_10;
        basic_bellman_ford__flattened_record_2_t ivar_33;
        ivar_1->count++;
        ivar_4->count++;
        ivar_33 = (basic_bellman_ford__flattened_record_2_t)basic_bellman_ford__flattened__update_vertex((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (mpz_ptr_t)ivar_8);
        ivar_10 = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__update_datum((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_3_t)ivar_6, (basic_bellman_ford__flattened_record_2_t)ivar_33, (mpz_ptr_t)ivar_8);
        bool_t ivar_35;
        uint8_t ivar_37;
        ivar_37 = (uint8_t)0;
        int64_t tmp4507 = mpz_cmp_ui(ivar_8, ivar_37);
        ivar_35 = (tmp4507 == 0);
        if (ivar_35){ 
             release_basic_bellman_ford__flattened_funtype_3(ivar_4, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
             //copying to basic_bellman_ford__flattened_funtype_3 from basic_bellman_ford__flattened_funtype_3;
             result = (basic_bellman_ford__flattened_funtype_3_t)ivar_10;
             if (result != NULL) result->count++;
             release_basic_bellman_ford__flattened_funtype_3(ivar_10, basic_bellman_ford__flattened__N);
} else {
        
             mpz_ptr_t ivar_57;
             uint8_t ivar_46;
             ivar_46 = (uint8_t)1;
             mpz_mk_sub_ui(ivar_57, ivar_8, (uint64_t)ivar_46);
             result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__vertex_round_parallel_rec(basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, (basic_bellman_ford__flattened_funtype_3_t)ivar_4, (basic_bellman_ford__flattened_funtype_3_t)ivar_10, ivar_57);
};

        
        return result;
}

basic_bellman_ford__flattened_funtype_7_t basic_bellman_ford__flattened__vertex_round_parallel(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1){
        basic_bellman_ford__flattened_funtype_7_t  result;
        basic_bellman_ford__flattened_closure_9_t cl4559;
        cl4559 = new_basic_bellman_ford__flattened_closure_9();
        mpz_set(cl4559->fvar_1, basic_bellman_ford__flattened__N);
        cl4559->fvar_2 = (basic_bellman_ford__flattened_funtype_6_t)ivar_1;
        if (cl4559->fvar_2 != NULL) cl4559->fvar_2->count++;
        release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
        result = (basic_bellman_ford__flattened_funtype_7_t)cl4559;

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__Bellman_Ford_wrap_rec(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, mpz_ptr_t ivar_4, basic_bellman_ford__flattened_funtype_3_t ivar_5, basic_bellman_ford__flattened_funtype_7_t ivar_7, mpz_ptr_t ivar_11){
        basic_bellman_ford__flattened_funtype_3_t  result;
        /* NewData */ basic_bellman_ford__flattened_funtype_3_t ivar_13;
        ivar_5->count++;
        ivar_13 = (basic_bellman_ford__flattened_funtype_3_t)ivar_7->ftbl->fptr(ivar_7, ivar_5);
        bool_t ivar_25;
        bool_t ivar_26;
        uint8_t ivar_29;
        ivar_29 = (uint8_t)0;
        int64_t tmp4662 = mpz_cmp_ui(ivar_11, ivar_29);
        ivar_26 = (tmp4662 == 0);
        if (ivar_26){ 
             release_basic_bellman_ford__flattened_funtype_3(ivar_5, basic_bellman_ford__flattened__N);
             ivar_25 = (bool_t) true;
} else {
        
             ivar_13->count++;
             ivar_25 = (bool_t) equal_basic_bellman_ford__flattened_funtype_3(ivar_13, ivar_5, basic_bellman_ford__flattened__N);
};
        if (ivar_25){ 
             release_basic_bellman_ford__flattened_funtype_7(ivar_7, basic_bellman_ford__flattened__N);
             release_basic_bellman_ford__flattened_funtype_6(ivar_1, basic_bellman_ford__flattened__N);
             //copying to basic_bellman_ford__flattened_funtype_3 from basic_bellman_ford__flattened_funtype_3;
             result = (basic_bellman_ford__flattened_funtype_3_t)ivar_13;
             if (result != NULL) result->count++;
             release_basic_bellman_ford__flattened_funtype_3(ivar_13, basic_bellman_ford__flattened__N);
} else {
        
             mpz_ptr_t ivar_57;
             uint8_t ivar_43;
             ivar_43 = (uint8_t)1;
             mpz_mk_sub_ui(ivar_57, ivar_11, (uint64_t)ivar_43);
             result = (basic_bellman_ford__flattened_funtype_3_t)basic_bellman_ford__flattened__Bellman_Ford_wrap_rec(basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1, ivar_4, (basic_bellman_ford__flattened_funtype_3_t)ivar_13, (basic_bellman_ford__flattened_funtype_7_t)ivar_7, ivar_57);
};

        
        return result;
}

basic_bellman_ford__flattened_funtype_11_t basic_bellman_ford__flattened__Bellman_Ford_wrap(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_7_t ivar_1){
        basic_bellman_ford__flattened_funtype_11_t  result;
        basic_bellman_ford__flattened_closure_12_t cl4750;
        cl4750 = new_basic_bellman_ford__flattened_closure_12();
        mpz_set(cl4750->fvar_1, basic_bellman_ford__flattened__N);
        cl4750->fvar_2 = (basic_bellman_ford__flattened_funtype_7_t)ivar_1;
        if (cl4750->fvar_2 != NULL) cl4750->fvar_2->count++;
        release_basic_bellman_ford__flattened_funtype_7(ivar_1, basic_bellman_ford__flattened__N);
        result = (basic_bellman_ford__flattened_funtype_11_t)cl4750;

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__Bellman_Ford_serial(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, mpz_ptr_t ivar_4){
        basic_bellman_ford__flattened_funtype_3_t  result;
        basic_bellman_ford__flattened_funtype_11_t ivar_14;
        basic_bellman_ford__flattened_funtype_7_t ivar_37;
        ivar_1->count++;
        ivar_37 = (basic_bellman_ford__flattened_funtype_7_t)basic_bellman_ford__flattened__vertex_round_serial((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1);
        ivar_14 = (basic_bellman_ford__flattened_funtype_11_t)basic_bellman_ford__flattened__Bellman_Ford_wrap((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_7_t)ivar_37);
        result = (basic_bellman_ford__flattened_funtype_3_t)ivar_14->ftbl->mptr(ivar_14, ivar_1, ivar_4);
        ivar_14->ftbl->rptr(ivar_14);

        
        return result;
}

basic_bellman_ford__flattened_funtype_3_t basic_bellman_ford__flattened__Bellman_Ford_parallel(mpz_ptr_t basic_bellman_ford__flattened__N, basic_bellman_ford__flattened_funtype_6_t ivar_1, mpz_ptr_t ivar_4){
        basic_bellman_ford__flattened_funtype_3_t  result;
        basic_bellman_ford__flattened_funtype_11_t ivar_14;
        basic_bellman_ford__flattened_funtype_7_t ivar_37;
        ivar_1->count++;
        ivar_37 = (basic_bellman_ford__flattened_funtype_7_t)basic_bellman_ford__flattened__vertex_round_parallel((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_6_t)ivar_1);
        ivar_14 = (basic_bellman_ford__flattened_funtype_11_t)basic_bellman_ford__flattened__Bellman_Ford_wrap((mpz_ptr_t)basic_bellman_ford__flattened__N, (basic_bellman_ford__flattened_funtype_7_t)ivar_37);
        result = (basic_bellman_ford__flattened_funtype_3_t)ivar_14->ftbl->mptr(ivar_14, ivar_1, ivar_4);
        ivar_14->ftbl->rptr(ivar_14);

        
        return result;
}