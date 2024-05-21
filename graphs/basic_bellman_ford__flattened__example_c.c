//Code generated using pvs2ir2c
#include "basic_bellman_ford__flattened__example_c.h"


basic_bellman_ford__flattened__example_record_0_t new_basic_bellman_ford__flattened__example_record_0(void){
        basic_bellman_ford__flattened__example_record_0_t tmp = (basic_bellman_ford__flattened__example_record_0_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_record_0_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened__example_record_0(basic_bellman_ford__flattened__example_record_0_t x){
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened__example_record_0_ptr(pointer_t x, type_actual_t T){
        release_basic_bellman_ford__flattened__example_record_0((basic_bellman_ford__flattened__example_record_0_t)x);
}

basic_bellman_ford__flattened__example_record_0_t copy_basic_bellman_ford__flattened__example_record_0(basic_bellman_ford__flattened__example_record_0_t x){
        basic_bellman_ford__flattened__example_record_0_t y = new_basic_bellman_ford__flattened__example_record_0();
        y->project_1 = (bool_t)x->project_1;
        mpq_set(y->project_2, x->project_2);
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened__example_record_0(basic_bellman_ford__flattened__example_record_0_t x, basic_bellman_ford__flattened__example_record_0_t y){
        bool_t tmp = true;
        tmp = tmp && x->project_1 == y->project_1;tmp = tmp && (mpq_cmp(x->project_2, y->project_2) == 0);
        return tmp;}

char * json_basic_bellman_ford__flattened__example_record_0(basic_bellman_ford__flattened__example_record_0_t x){
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

bool_t equal_basic_bellman_ford__flattened__example_record_0_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened__example_record_0_t T){
        return equal_basic_bellman_ford__flattened__example_record_0((basic_bellman_ford__flattened__example_record_0_t)x, (basic_bellman_ford__flattened__example_record_0_t)y);
}

char * json_basic_bellman_ford__flattened__example_record_0_ptr(pointer_t x, actual_basic_bellman_ford__flattened__example_record_0_t T){
        return json_basic_bellman_ford__flattened__example_record_0((basic_bellman_ford__flattened__example_record_0_t)x);
}

actual_basic_bellman_ford__flattened__example_record_0_t actual_basic_bellman_ford__flattened__example_record_0(){
        actual_basic_bellman_ford__flattened__example_record_0_t new = (actual_basic_bellman_ford__flattened__example_record_0_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened__example_record_0_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened__example_record_0_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened__example_record_0_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened__example_record_0_ptr);
 

 
        return new;
 };

basic_bellman_ford__flattened__example_record_0_t update_basic_bellman_ford__flattened__example_record_0_project_1(basic_bellman_ford__flattened__example_record_0_t x, bool_t v){
        basic_bellman_ford__flattened__example_record_0_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_0(x); x->count--;};
        y->project_1 = (bool_t)v;
        return y;}

basic_bellman_ford__flattened__example_record_0_t update_basic_bellman_ford__flattened__example_record_0_project_2(basic_bellman_ford__flattened__example_record_0_t x, mpq_ptr_t v){
        basic_bellman_ford__flattened__example_record_0_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_0(x); x->count--;};
        mpq_set(y->project_2, v);
        return y;}



void release_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t x){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened__example_funtype_1_t copy_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_htbl_t htbl, uint8_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        keyzero = (data.key == 0);
        bool_t keymatch;
        keymatch = (data.key == i);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                keyzero = (data.key == 0);

                keymatch = (data.key == i);
                }
        return hashindex;
        }

basic_bellman_ford__flattened__example_funtype_1_t dupdate_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t a, uint8_t i, basic_bellman_ford__flattened__example_record_0_t v){
        basic_bellman_ford__flattened__example_funtype_1_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened__example_funtype_1_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_1_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened__example_funtype_1_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){htbl->data[j].key = (uint8_t)0; htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened__example_funtype_1_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_1_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        keyzero = (data[j].key == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                keyzero = (new_data[new_loc].key == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        keyzero = (new_data[new_loc].key == 0);
                                }
                                new_data[new_loc].key = (uint8_t)data[j].key;
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened__example_record_0_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = uint32_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_1(htbl, i, ihash);
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        hentrykeyzero = (hentry.key == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {htbl->data[hashindex].key = (uint8_t)i; htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_record_0_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened__example_record_0_t tempvalue;tempvalue = (basic_bellman_ford__flattened__example_record_0_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_record_0_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened__example_record_0(tempvalue);};
        return a;

}

basic_bellman_ford__flattened__example_funtype_1_t update_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t a, uint8_t i, basic_bellman_ford__flattened__example_record_0_t v){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened__example_funtype_1(a, i, v);
            } else {
                basic_bellman_ford__flattened__example_funtype_1_t x = copy_basic_bellman_ford__flattened__example_funtype_1(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened__example_funtype_1(x, i, v);
            }}

bool_t equal_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t x, basic_bellman_ford__flattened__example_funtype_1_t y){
        return false;}

char* json_basic_bellman_ford__flattened__example_funtype_1(basic_bellman_ford__flattened__example_funtype_1_t x){char * result = safe_malloc(58); sprintf(result, "%s", "\"basic_bellman_ford__flattened__example_funtype_1\""); return result;}


basic_bellman_ford__flattened__example_record_0_t f_basic_bellman_ford__flattened__example_closure_2(struct basic_bellman_ford__flattened__example_closure_2_s * closure, uint8_t bvar){
if (closure->htbl != NULL){
        basic_bellman_ford__flattened__example_funtype_1_htbl_t htbl = closure->htbl;
        uint32_t hash = uint32_hash(bvar);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_1(htbl, bvar, hash);
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t entry = htbl->data[hashindex];
        bool_t keyzero;
         keyzero = (entry.key == 0);
        if (!keyzero || entry.keyhash != 0){
            basic_bellman_ford__flattened__example_record_0_t result;
            result = (basic_bellman_ford__flattened__example_record_0_t)entry.value;
            if (result != NULL) result->count++;
            return result;}
        

        return h_basic_bellman_ford__flattened__example_closure_2(bvar);};

return h_basic_bellman_ford__flattened__example_closure_2(bvar);}

basic_bellman_ford__flattened__example_record_0_t m_basic_bellman_ford__flattened__example_closure_2(struct basic_bellman_ford__flattened__example_closure_2_s * closure, uint8_t bvar){
        return h_basic_bellman_ford__flattened__example_closure_2(bvar);}

basic_bellman_ford__flattened__example_record_0_t h_basic_bellman_ford__flattened__example_closure_2(uint8_t ivar_8){
        basic_bellman_ford__flattened__example_record_0_t result;
        result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__example__s((uint8_t)ivar_8);

        return result;
}

basic_bellman_ford__flattened__example_closure_2_t new_basic_bellman_ford__flattened__example_closure_2(void){
        static struct basic_bellman_ford__flattened__example_funtype_1_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&f_basic_bellman_ford__flattened__example_closure_2, .mptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&m_basic_bellman_ford__flattened__example_closure_2, .rptr =  (void (*)(basic_bellman_ford__flattened__example_funtype_1_t))&release_basic_bellman_ford__flattened__example_closure_2, .cptr = (basic_bellman_ford__flattened__example_funtype_1_t (*)(basic_bellman_ford__flattened__example_funtype_1_t))&copy_basic_bellman_ford__flattened__example_closure_2};
        basic_bellman_ford__flattened__example_closure_2_t tmp = (basic_bellman_ford__flattened__example_closure_2_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_closure_2_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        return tmp;}

void release_basic_bellman_ford__flattened__example_closure_2(basic_bellman_ford__flattened__example_funtype_1_t closure){
        basic_bellman_ford__flattened__example_closure_2_t x = (basic_bellman_ford__flattened__example_closure_2_t)closure;
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened__example_closure_2_t copy_basic_bellman_ford__flattened__example_closure_2(basic_bellman_ford__flattened__example_closure_2_t x){
        basic_bellman_ford__flattened__example_closure_2_t y = new_basic_bellman_ford__flattened__example_closure_2();
        y->ftbl = x->ftbl;

        if (x->htbl != NULL){
            basic_bellman_ford__flattened__example_funtype_1_htbl_t new_htbl = (basic_bellman_ford__flattened__example_funtype_1_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_1_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened__example_funtype_1_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_1_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened__example_record_0_t f_basic_bellman_ford__flattened__example_closure_3(struct basic_bellman_ford__flattened__example_closure_3_s * closure, uint8_t bvar){
if (closure->htbl != NULL){
        basic_bellman_ford__flattened__example_funtype_1_htbl_t htbl = closure->htbl;
        uint32_t hash = uint32_hash(bvar);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_1(htbl, bvar, hash);
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t entry = htbl->data[hashindex];
        bool_t keyzero;
         keyzero = (entry.key == 0);
        if (!keyzero || entry.keyhash != 0){
            basic_bellman_ford__flattened__example_record_0_t result;
            result = (basic_bellman_ford__flattened__example_record_0_t)entry.value;
            if (result != NULL) result->count++;
            return result;}
        

        return h_basic_bellman_ford__flattened__example_closure_3(bvar);};

return h_basic_bellman_ford__flattened__example_closure_3(bvar);}

basic_bellman_ford__flattened__example_record_0_t m_basic_bellman_ford__flattened__example_closure_3(struct basic_bellman_ford__flattened__example_closure_3_s * closure, uint8_t bvar){
        return h_basic_bellman_ford__flattened__example_closure_3(bvar);}

basic_bellman_ford__flattened__example_record_0_t h_basic_bellman_ford__flattened__example_closure_3(uint8_t ivar_14){
        basic_bellman_ford__flattened__example_record_0_t result;
        result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__example__u((uint8_t)ivar_14);

        return result;
}

basic_bellman_ford__flattened__example_closure_3_t new_basic_bellman_ford__flattened__example_closure_3(void){
        static struct basic_bellman_ford__flattened__example_funtype_1_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&f_basic_bellman_ford__flattened__example_closure_3, .mptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&m_basic_bellman_ford__flattened__example_closure_3, .rptr =  (void (*)(basic_bellman_ford__flattened__example_funtype_1_t))&release_basic_bellman_ford__flattened__example_closure_3, .cptr = (basic_bellman_ford__flattened__example_funtype_1_t (*)(basic_bellman_ford__flattened__example_funtype_1_t))&copy_basic_bellman_ford__flattened__example_closure_3};
        basic_bellman_ford__flattened__example_closure_3_t tmp = (basic_bellman_ford__flattened__example_closure_3_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_closure_3_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        return tmp;}

void release_basic_bellman_ford__flattened__example_closure_3(basic_bellman_ford__flattened__example_funtype_1_t closure){
        basic_bellman_ford__flattened__example_closure_3_t x = (basic_bellman_ford__flattened__example_closure_3_t)closure;
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened__example_closure_3_t copy_basic_bellman_ford__flattened__example_closure_3(basic_bellman_ford__flattened__example_closure_3_t x){
        basic_bellman_ford__flattened__example_closure_3_t y = new_basic_bellman_ford__flattened__example_closure_3();
        y->ftbl = x->ftbl;

        if (x->htbl != NULL){
            basic_bellman_ford__flattened__example_funtype_1_htbl_t new_htbl = (basic_bellman_ford__flattened__example_funtype_1_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_1_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened__example_funtype_1_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_1_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened__example_record_0_t f_basic_bellman_ford__flattened__example_closure_4(struct basic_bellman_ford__flattened__example_closure_4_s * closure, uint8_t bvar){
if (closure->htbl != NULL){
        basic_bellman_ford__flattened__example_funtype_1_htbl_t htbl = closure->htbl;
        uint32_t hash = uint32_hash(bvar);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_1(htbl, bvar, hash);
        basic_bellman_ford__flattened__example_funtype_1_hashentry_t entry = htbl->data[hashindex];
        bool_t keyzero;
         keyzero = (entry.key == 0);
        if (!keyzero || entry.keyhash != 0){
            basic_bellman_ford__flattened__example_record_0_t result;
            result = (basic_bellman_ford__flattened__example_record_0_t)entry.value;
            if (result != NULL) result->count++;
            return result;}
        

        return h_basic_bellman_ford__flattened__example_closure_4(bvar);};

return h_basic_bellman_ford__flattened__example_closure_4(bvar);}

basic_bellman_ford__flattened__example_record_0_t m_basic_bellman_ford__flattened__example_closure_4(struct basic_bellman_ford__flattened__example_closure_4_s * closure, uint8_t bvar){
        return h_basic_bellman_ford__flattened__example_closure_4(bvar);}

basic_bellman_ford__flattened__example_record_0_t h_basic_bellman_ford__flattened__example_closure_4(uint8_t ivar_16){
        basic_bellman_ford__flattened__example_record_0_t result;
        result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__example__v((uint8_t)ivar_16);

        return result;
}

basic_bellman_ford__flattened__example_closure_4_t new_basic_bellman_ford__flattened__example_closure_4(void){
        static struct basic_bellman_ford__flattened__example_funtype_1_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&f_basic_bellman_ford__flattened__example_closure_4, .mptr = (basic_bellman_ford__flattened__example_record_0_t (*)(basic_bellman_ford__flattened__example_funtype_1_t, uint8_t))&m_basic_bellman_ford__flattened__example_closure_4, .rptr =  (void (*)(basic_bellman_ford__flattened__example_funtype_1_t))&release_basic_bellman_ford__flattened__example_closure_4, .cptr = (basic_bellman_ford__flattened__example_funtype_1_t (*)(basic_bellman_ford__flattened__example_funtype_1_t))&copy_basic_bellman_ford__flattened__example_closure_4};
        basic_bellman_ford__flattened__example_closure_4_t tmp = (basic_bellman_ford__flattened__example_closure_4_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_closure_4_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        return tmp;}

void release_basic_bellman_ford__flattened__example_closure_4(basic_bellman_ford__flattened__example_funtype_1_t closure){
        basic_bellman_ford__flattened__example_closure_4_t x = (basic_bellman_ford__flattened__example_closure_4_t)closure;
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened__example_closure_4_t copy_basic_bellman_ford__flattened__example_closure_4(basic_bellman_ford__flattened__example_closure_4_t x){
        basic_bellman_ford__flattened__example_closure_4_t y = new_basic_bellman_ford__flattened__example_closure_4();
        y->ftbl = x->ftbl;

        if (x->htbl != NULL){
            basic_bellman_ford__flattened__example_funtype_1_htbl_t new_htbl = (basic_bellman_ford__flattened__example_funtype_1_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_1_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened__example_funtype_1_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_1_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_1_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened__example_record_5_t new_basic_bellman_ford__flattened__example_record_5(void){
        basic_bellman_ford__flattened__example_record_5_t tmp = (basic_bellman_ford__flattened__example_record_5_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_record_5_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened__example_record_5(basic_bellman_ford__flattened__example_record_5_t x){
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened__example_record_0(x->w);
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened__example_record_5_ptr(pointer_t x, type_actual_t T){
        release_basic_bellman_ford__flattened__example_record_5((basic_bellman_ford__flattened__example_record_5_t)x);
}

basic_bellman_ford__flattened__example_record_5_t copy_basic_bellman_ford__flattened__example_record_5(basic_bellman_ford__flattened__example_record_5_t x){
        basic_bellman_ford__flattened__example_record_5_t y = new_basic_bellman_ford__flattened__example_record_5();
        y->pv = (int8_t)x->pv;
        y->w = x->w;
        if (y->w != NULL){y->w->count++;};
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened__example_record_5(basic_bellman_ford__flattened__example_record_5_t x, basic_bellman_ford__flattened__example_record_5_t y){
        bool_t tmp = true;
        tmp = tmp && x->pv == y->pv;
        tmp = tmp && equal_basic_bellman_ford__flattened__example_record_0(x->w, y->w);
        return tmp;}

char * json_basic_bellman_ford__flattened__example_record_5(basic_bellman_ford__flattened__example_record_5_t x){
        char * tmp[2]; 
        char * fld0 = safe_malloc(14);
         sprintf(fld0, "\"pv\" : ");
        tmp[0] = safe_strcat(fld0, json_int8(x->pv));
        char * fld1 = safe_malloc(13);
         sprintf(fld1, "\"w\" : ");
        tmp[1] = safe_strcat(fld1, json_basic_bellman_ford__flattened__example_record_0(x->w));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened__example_record_5_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened__example_record_5_t T){
        return equal_basic_bellman_ford__flattened__example_record_5((basic_bellman_ford__flattened__example_record_5_t)x, (basic_bellman_ford__flattened__example_record_5_t)y);
}

char * json_basic_bellman_ford__flattened__example_record_5_ptr(pointer_t x, actual_basic_bellman_ford__flattened__example_record_5_t T){
        return json_basic_bellman_ford__flattened__example_record_5((basic_bellman_ford__flattened__example_record_5_t)x);
}

actual_basic_bellman_ford__flattened__example_record_5_t actual_basic_bellman_ford__flattened__example_record_5(){
        actual_basic_bellman_ford__flattened__example_record_5_t new = (actual_basic_bellman_ford__flattened__example_record_5_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened__example_record_5_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened__example_record_5_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened__example_record_5_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened__example_record_5_ptr);
 

 
        return new;
 };

basic_bellman_ford__flattened__example_record_5_t update_basic_bellman_ford__flattened__example_record_5_pv(basic_bellman_ford__flattened__example_record_5_t x, int8_t v){
        basic_bellman_ford__flattened__example_record_5_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_5(x); x->count--;};
        y->pv = (int8_t)v;
        return y;}

basic_bellman_ford__flattened__example_record_5_t update_basic_bellman_ford__flattened__example_record_5_w(basic_bellman_ford__flattened__example_record_5_t x, basic_bellman_ford__flattened__example_record_0_t v){
        basic_bellman_ford__flattened__example_record_5_t y;
        if (v != NULL){v->count++;};
        if (x->count == 1){y = x; if (x->w != NULL){release_basic_bellman_ford__flattened__example_record_0(x->w);};}
        else {y = copy_basic_bellman_ford__flattened__example_record_5(x); x->count--; y->w->count--;};
        y->w = (basic_bellman_ford__flattened__example_record_0_t)v;
        return y;}



void release_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t x){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened__example_funtype_6_t copy_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_htbl_t htbl, uint8_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened__example_funtype_6_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        keyzero = (data.key == 0);
        bool_t keymatch;
        keymatch = (data.key == i);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                keyzero = (data.key == 0);

                keymatch = (data.key == i);
                }
        return hashindex;
        }

basic_bellman_ford__flattened__example_funtype_6_t dupdate_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t a, uint8_t i, basic_bellman_ford__flattened__example_record_5_t v){
        basic_bellman_ford__flattened__example_funtype_6_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened__example_funtype_6_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_6_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened__example_funtype_6_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened__example_funtype_6_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){htbl->data[j].key = (uint8_t)0; htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened__example_funtype_6_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened__example_funtype_6_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_6_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened__example_funtype_6_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        keyzero = (data[j].key == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                keyzero = (new_data[new_loc].key == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        keyzero = (new_data[new_loc].key == 0);
                                }
                                new_data[new_loc].key = (uint8_t)data[j].key;
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened__example_record_5_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = uint32_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_6(htbl, i, ihash);
        basic_bellman_ford__flattened__example_funtype_6_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        hentrykeyzero = (hentry.key == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {htbl->data[hashindex].key = (uint8_t)i; htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_record_5_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened__example_record_5_t tempvalue;tempvalue = (basic_bellman_ford__flattened__example_record_5_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_record_5_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened__example_record_5(tempvalue);};
        return a;

}

basic_bellman_ford__flattened__example_funtype_6_t update_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t a, uint8_t i, basic_bellman_ford__flattened__example_record_5_t v){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened__example_funtype_6(a, i, v);
            } else {
                basic_bellman_ford__flattened__example_funtype_6_t x = copy_basic_bellman_ford__flattened__example_funtype_6(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened__example_funtype_6(x, i, v);
            }}

bool_t equal_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t x, basic_bellman_ford__flattened__example_funtype_6_t y){
        return false;}

char* json_basic_bellman_ford__flattened__example_funtype_6(basic_bellman_ford__flattened__example_funtype_6_t x){char * result = safe_malloc(58); sprintf(result, "%s", "\"basic_bellman_ford__flattened__example_funtype_6\""); return result;}

void release_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t x){
        x->count--;
            if (x->count <= 0)

                x->ftbl->rptr(x);}

basic_bellman_ford__flattened__example_funtype_7_t copy_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t x){return x->ftbl->cptr(x);}

uint32_t lookup_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_htbl_t htbl, uint8_t i, uint32_t ihash){
        uint32_t mask = htbl->size - 1;
        uint32_t hashindex = ihash & mask;
        basic_bellman_ford__flattened__example_funtype_7_hashentry_t data = htbl->data[hashindex];
        bool_t keyzero;

        keyzero = (data.key == 0);
        bool_t keymatch;
        keymatch = (data.key == i);
        while ((!keyzero || data.keyhash != 0) &&
                 (data.keyhash != ihash || !keymatch)){
                hashindex++;
                hashindex = hashindex & mask;
                data = htbl->data[hashindex];

                keyzero = (data.key == 0);

                keymatch = (data.key == i);
                }
        return hashindex;
        }

basic_bellman_ford__flattened__example_funtype_7_t dupdate_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t a, uint8_t i, basic_bellman_ford__flattened__example_funtype_1_t v){
        basic_bellman_ford__flattened__example_funtype_7_htbl_t htbl = a->htbl;
        if (htbl == NULL){//construct new htbl
                htbl = (basic_bellman_ford__flattened__example_funtype_7_htbl_t)safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_7_htbl_s));
                htbl->size = HTBL_DEFAULT_SIZE; htbl->num_entries = 0;
                htbl->data = (basic_bellman_ford__flattened__example_funtype_7_hashentry_t *)safe_malloc(HTBL_DEFAULT_SIZE * sizeof(struct basic_bellman_ford__flattened__example_funtype_7_hashentry_s));
                for (uint32_t j = 0; j < HTBL_DEFAULT_SIZE; j++){htbl->data[j].key = (uint8_t)0; htbl->data[j].keyhash = 0;
                }
                a->htbl = htbl;
        }
        uint32_t size = htbl->size;
        uint32_t num_entries = htbl->num_entries;
        basic_bellman_ford__flattened__example_funtype_7_hashentry_t * data = htbl->data;
        if (num_entries/3 >  size/5){//resize data
                uint32_t new_size = 2*size; uint32_t new_mask = new_size - 1;
                if (size >= HTBL_MAX_SIZE) out_of_memory();
                basic_bellman_ford__flattened__example_funtype_7_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_7_hashentry_t *)safe_malloc(new_size * sizeof(struct basic_bellman_ford__flattened__example_funtype_7_hashentry_s));
                for (uint32_t j = 0; j < new_size; j++){
                        new_data[j].key = 0;
                        new_data[j].keyhash = 0;}
                for (uint32_t j = 0; j < size; j++){//transfer entries
                        uint32_t keyhash = data[j].keyhash;
                        bool_t keyzero;
                        keyzero = (data[j].key == 0);
                        if (!keyzero || keyhash != 0){
                                uint32_t new_loc = keyhash ^ new_mask;
                                keyzero = (new_data[new_loc].key == 0);
                                while (keyzero && new_data[new_loc].keyhash == 0){
                                        new_loc++;
                                        new_loc = new_loc ^ new_mask;

                                        keyzero = (new_data[new_loc].key == 0);
                                }
                                new_data[new_loc].key = (uint8_t)data[j].key;
                                new_data[new_loc].keyhash = keyhash;
                                new_data[new_loc].value = (basic_bellman_ford__flattened__example_funtype_1_t)data[j].value;
                                }}
                htbl->size = new_size;
                htbl->num_entries = num_entries;
                htbl->data = new_data;
                safe_free(data);}
        uint32_t ihash = uint32_hash(i);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_7(htbl, i, ihash);
        basic_bellman_ford__flattened__example_funtype_7_hashentry_t hentry = htbl->data[hashindex];
        uint32_t hkeyhash = hentry.keyhash;
        bool_t hentrykeyzero;
        hentrykeyzero = (hentry.key == 0);

        if (hentrykeyzero && (hkeyhash == 0))
                {htbl->data[hashindex].key = (uint8_t)i; htbl->data[hashindex].keyhash = ihash; htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_funtype_1_t)v; htbl->num_entries++;}
            else {basic_bellman_ford__flattened__example_funtype_1_t tempvalue;tempvalue = (basic_bellman_ford__flattened__example_funtype_1_t)htbl->data[hashindex].value;htbl->data[hashindex].value = (basic_bellman_ford__flattened__example_funtype_1_t)v;if (v != NULL) v->count++;if (tempvalue != NULL)release_basic_bellman_ford__flattened__example_funtype_1(tempvalue);};
        return a;

}

basic_bellman_ford__flattened__example_funtype_7_t update_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t a, uint8_t i, basic_bellman_ford__flattened__example_funtype_1_t v){
        if (a->count == 1){
                return dupdate_basic_bellman_ford__flattened__example_funtype_7(a, i, v);
            } else {
                basic_bellman_ford__flattened__example_funtype_7_t x = copy_basic_bellman_ford__flattened__example_funtype_7(a);
                a->count--;
                return dupdate_basic_bellman_ford__flattened__example_funtype_7(x, i, v);
            }}

bool_t equal_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t x, basic_bellman_ford__flattened__example_funtype_7_t y){
        return false;}

char* json_basic_bellman_ford__flattened__example_funtype_7(basic_bellman_ford__flattened__example_funtype_7_t x){char * result = safe_malloc(58); sprintf(result, "%s", "\"basic_bellman_ford__flattened__example_funtype_7\""); return result;}


basic_bellman_ford__flattened__example_funtype_1_t f_basic_bellman_ford__flattened__example_closure_8(struct basic_bellman_ford__flattened__example_closure_8_s * closure, uint8_t bvar){
if (closure->htbl != NULL){
        basic_bellman_ford__flattened__example_funtype_7_htbl_t htbl = closure->htbl;
        uint32_t hash = uint32_hash(bvar);
        uint32_t hashindex = lookup_basic_bellman_ford__flattened__example_funtype_7(htbl, bvar, hash);
        basic_bellman_ford__flattened__example_funtype_7_hashentry_t entry = htbl->data[hashindex];
        bool_t keyzero;
         keyzero = (entry.key == 0);
        if (!keyzero || entry.keyhash != 0){
            basic_bellman_ford__flattened__example_funtype_1_t result;
            result = (basic_bellman_ford__flattened__example_funtype_1_t)entry.value;
            if (result != NULL) result->count++;
            return result;}
        

        return h_basic_bellman_ford__flattened__example_closure_8(bvar);};

return h_basic_bellman_ford__flattened__example_closure_8(bvar);}

basic_bellman_ford__flattened__example_funtype_1_t m_basic_bellman_ford__flattened__example_closure_8(struct basic_bellman_ford__flattened__example_closure_8_s * closure, uint8_t bvar){
        return h_basic_bellman_ford__flattened__example_closure_8(bvar);}

basic_bellman_ford__flattened__example_funtype_1_t h_basic_bellman_ford__flattened__example_closure_8(uint8_t ivar_12){
        basic_bellman_ford__flattened__example_funtype_1_t result;
        result = (basic_bellman_ford__flattened__example_funtype_1_t)basic_bellman_ford__flattened__example__G((uint8_t)ivar_12);

        return result;
}

basic_bellman_ford__flattened__example_closure_8_t new_basic_bellman_ford__flattened__example_closure_8(void){
        static struct basic_bellman_ford__flattened__example_funtype_7_ftbl_s ftbl = {.fptr = (basic_bellman_ford__flattened__example_funtype_1_t (*)(basic_bellman_ford__flattened__example_funtype_7_t, uint8_t))&f_basic_bellman_ford__flattened__example_closure_8, .mptr = (basic_bellman_ford__flattened__example_funtype_1_t (*)(basic_bellman_ford__flattened__example_funtype_7_t, uint8_t))&m_basic_bellman_ford__flattened__example_closure_8, .rptr =  (void (*)(basic_bellman_ford__flattened__example_funtype_7_t))&release_basic_bellman_ford__flattened__example_closure_8, .cptr = (basic_bellman_ford__flattened__example_funtype_7_t (*)(basic_bellman_ford__flattened__example_funtype_7_t))&copy_basic_bellman_ford__flattened__example_closure_8};
        basic_bellman_ford__flattened__example_closure_8_t tmp = (basic_bellman_ford__flattened__example_closure_8_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_closure_8_s));
        tmp->count = 1;
        tmp->ftbl = &ftbl;
        tmp->htbl = NULL;
        return tmp;}

void release_basic_bellman_ford__flattened__example_closure_8(basic_bellman_ford__flattened__example_funtype_7_t closure){
        basic_bellman_ford__flattened__example_closure_8_t x = (basic_bellman_ford__flattened__example_closure_8_t)closure;
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

basic_bellman_ford__flattened__example_closure_8_t copy_basic_bellman_ford__flattened__example_closure_8(basic_bellman_ford__flattened__example_closure_8_t x){
        basic_bellman_ford__flattened__example_closure_8_t y = new_basic_bellman_ford__flattened__example_closure_8();
        y->ftbl = x->ftbl;

        if (x->htbl != NULL){
            basic_bellman_ford__flattened__example_funtype_7_htbl_t new_htbl = (basic_bellman_ford__flattened__example_funtype_7_htbl_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_funtype_7_htbl_s));
            new_htbl->size = x->htbl->size;
            new_htbl->num_entries = x->htbl->num_entries;
            basic_bellman_ford__flattened__example_funtype_7_hashentry_t * new_data = (basic_bellman_ford__flattened__example_funtype_7_hashentry_t *) safe_malloc(new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_7_hashentry_s));
            memcpy(new_data, x->htbl->data, (new_htbl->size * sizeof(struct basic_bellman_ford__flattened__example_funtype_7_hashentry_s)));
            new_htbl->data = new_data;
            for (uint32_t j = 0; j < new_htbl->size; j++){
                        if ((new_htbl->data[j].key != 0) || new_htbl->data[j].keyhash != 0) new_htbl->data[j].value->count++;};
            y->htbl = new_htbl;
        } else
            {y->htbl = NULL;};
        return y;
}


basic_bellman_ford__flattened__example_record_9_t new_basic_bellman_ford__flattened__example_record_9(void){
        basic_bellman_ford__flattened__example_record_9_t tmp = (basic_bellman_ford__flattened__example_record_9_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_record_9_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened__example_record_9(basic_bellman_ford__flattened__example_record_9_t x){
        x->count--;
        if (x->count <= 0){
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened__example_record_9_ptr(pointer_t x, type_actual_t T){
        release_basic_bellman_ford__flattened__example_record_9((basic_bellman_ford__flattened__example_record_9_t)x);
}

basic_bellman_ford__flattened__example_record_9_t copy_basic_bellman_ford__flattened__example_record_9(basic_bellman_ford__flattened__example_record_9_t x){
        basic_bellman_ford__flattened__example_record_9_t y = new_basic_bellman_ford__flattened__example_record_9();
        y->project_1 = (bool_t)x->project_1;
        y->project_2 = (uint8_t)x->project_2;
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened__example_record_9(basic_bellman_ford__flattened__example_record_9_t x, basic_bellman_ford__flattened__example_record_9_t y){
        bool_t tmp = true;
        tmp = tmp && x->project_1 == y->project_1;
        tmp = tmp && x->project_2 == y->project_2;
        return tmp;}

char * json_basic_bellman_ford__flattened__example_record_9(basic_bellman_ford__flattened__example_record_9_t x){
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

bool_t equal_basic_bellman_ford__flattened__example_record_9_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened__example_record_9_t T){
        return equal_basic_bellman_ford__flattened__example_record_9((basic_bellman_ford__flattened__example_record_9_t)x, (basic_bellman_ford__flattened__example_record_9_t)y);
}

char * json_basic_bellman_ford__flattened__example_record_9_ptr(pointer_t x, actual_basic_bellman_ford__flattened__example_record_9_t T){
        return json_basic_bellman_ford__flattened__example_record_9((basic_bellman_ford__flattened__example_record_9_t)x);
}

actual_basic_bellman_ford__flattened__example_record_9_t actual_basic_bellman_ford__flattened__example_record_9(){
        actual_basic_bellman_ford__flattened__example_record_9_t new = (actual_basic_bellman_ford__flattened__example_record_9_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened__example_record_9_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened__example_record_9_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened__example_record_9_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened__example_record_9_ptr);
 

 
        return new;
 };

basic_bellman_ford__flattened__example_record_9_t update_basic_bellman_ford__flattened__example_record_9_project_1(basic_bellman_ford__flattened__example_record_9_t x, bool_t v){
        basic_bellman_ford__flattened__example_record_9_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_9(x); x->count--;};
        y->project_1 = (bool_t)v;
        return y;}

basic_bellman_ford__flattened__example_record_9_t update_basic_bellman_ford__flattened__example_record_9_project_2(basic_bellman_ford__flattened__example_record_9_t x, uint8_t v){
        basic_bellman_ford__flattened__example_record_9_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_9(x); x->count--;};
        y->project_2 = (uint8_t)v;
        return y;}




basic_bellman_ford__flattened__example_record_10_t new_basic_bellman_ford__flattened__example_record_10(void){
        basic_bellman_ford__flattened__example_record_10_t tmp = (basic_bellman_ford__flattened__example_record_10_t) safe_malloc(sizeof(struct basic_bellman_ford__flattened__example_record_10_s));
        tmp->count = 1;
        return tmp;}

void release_basic_bellman_ford__flattened__example_record_10(basic_bellman_ford__flattened__example_record_10_t x){
        x->count--;
        if (x->count <= 0){
         release_basic_bellman_ford__flattened__example_record_9(x->w);
        //printf("\nFreeing\n");
        safe_free(x);}}

void release_basic_bellman_ford__flattened__example_record_10_ptr(pointer_t x, type_actual_t T){
        release_basic_bellman_ford__flattened__example_record_10((basic_bellman_ford__flattened__example_record_10_t)x);
}

basic_bellman_ford__flattened__example_record_10_t copy_basic_bellman_ford__flattened__example_record_10(basic_bellman_ford__flattened__example_record_10_t x){
        basic_bellman_ford__flattened__example_record_10_t y = new_basic_bellman_ford__flattened__example_record_10();
        y->pv = (uint8_t)x->pv;
        y->w = x->w;
        if (y->w != NULL){y->w->count++;};
        y->count = 1;
        return y;}

bool_t equal_basic_bellman_ford__flattened__example_record_10(basic_bellman_ford__flattened__example_record_10_t x, basic_bellman_ford__flattened__example_record_10_t y){
        bool_t tmp = true;
        tmp = tmp && x->pv == y->pv;
        tmp = tmp && equal_basic_bellman_ford__flattened__example_record_9(x->w, y->w);
        return tmp;}

char * json_basic_bellman_ford__flattened__example_record_10(basic_bellman_ford__flattened__example_record_10_t x){
        char * tmp[2]; 
        char * fld0 = safe_malloc(14);
         sprintf(fld0, "\"pv\" : ");
        tmp[0] = safe_strcat(fld0, json_uint8(x->pv));
        char * fld1 = safe_malloc(13);
         sprintf(fld1, "\"w\" : ");
        tmp[1] = safe_strcat(fld1, json_basic_bellman_ford__flattened__example_record_9(x->w));
         char * result = json_list_with_sep(tmp, 2,  '{', ',', '}');
         for (uint32_t i = 0; i < 2; i++) free(tmp[i]);
        return result;}

bool_t equal_basic_bellman_ford__flattened__example_record_10_ptr(pointer_t x, pointer_t y, actual_basic_bellman_ford__flattened__example_record_10_t T){
        return equal_basic_bellman_ford__flattened__example_record_10((basic_bellman_ford__flattened__example_record_10_t)x, (basic_bellman_ford__flattened__example_record_10_t)y);
}

char * json_basic_bellman_ford__flattened__example_record_10_ptr(pointer_t x, actual_basic_bellman_ford__flattened__example_record_10_t T){
        return json_basic_bellman_ford__flattened__example_record_10((basic_bellman_ford__flattened__example_record_10_t)x);
}

actual_basic_bellman_ford__flattened__example_record_10_t actual_basic_bellman_ford__flattened__example_record_10(){
        actual_basic_bellman_ford__flattened__example_record_10_t new = (actual_basic_bellman_ford__flattened__example_record_10_t)safe_malloc(sizeof(struct actual_basic_bellman_ford__flattened__example_record_10_s));
        new->equal_ptr = (equal_ptr_t)(*equal_basic_bellman_ford__flattened__example_record_10_ptr);
 
        new->release_ptr = (release_ptr_t)(*release_basic_bellman_ford__flattened__example_record_10_ptr);
 
        new->json_ptr = (json_ptr_t)(*json_basic_bellman_ford__flattened__example_record_10_ptr);
 

 
        return new;
 };

basic_bellman_ford__flattened__example_record_10_t update_basic_bellman_ford__flattened__example_record_10_pv(basic_bellman_ford__flattened__example_record_10_t x, uint8_t v){
        basic_bellman_ford__flattened__example_record_10_t y;
        if (x->count == 1){y = x;}
        else {y = copy_basic_bellman_ford__flattened__example_record_10(x); x->count--;};
        y->pv = (uint8_t)v;
        return y;}

basic_bellman_ford__flattened__example_record_10_t update_basic_bellman_ford__flattened__example_record_10_w(basic_bellman_ford__flattened__example_record_10_t x, basic_bellman_ford__flattened__example_record_9_t v){
        basic_bellman_ford__flattened__example_record_10_t y;
        if (v != NULL){v->count++;};
        if (x->count == 1){y = x; if (x->w != NULL){release_basic_bellman_ford__flattened__example_record_9(x->w);};}
        else {y = copy_basic_bellman_ford__flattened__example_record_10(x); x->count--; y->w->count--;};
        y->w = (basic_bellman_ford__flattened__example_record_9_t)v;
        return y;}



mpz_ptr_t basic_bellman_ford__flattened__example__N(void){
        mpz_ptr_t  static  result;

        static bool_t defined = false;
        if (!defined){
                    result = safe_malloc(sizeof(mpz_t));
        mpz_init(result);
        mpz_mk_set_ui(result, 3);

        defined = true;};
        
        return result;
}

basic_bellman_ford__flattened__example_record_0_t basic_bellman_ford__flattened__example__s(uint8_t ivar_1){
        basic_bellman_ford__flattened__example_record_0_t  result;
        /* N */ mpz_ptr_t ivar_8;
        mpz_mk_set(ivar_8, basic_bellman_ford__flattened__example__N());
        uint8_t ivar_10;
        bool_t ivar_3;
        uint8_t ivar_5;
        ivar_5 = (uint8_t)0;
        ivar_3 = (ivar_1 == ivar_5);
        if (ivar_3){ 
             ivar_10 = (uint8_t)0;
} else {
        
             ivar_10 = (uint8_t)2;
};
        mpq_ptr_t ivar_9;
        //copying to mpq from uint8;
        mpq_mk_set_ui(ivar_9, ivar_10);
        result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__r2er((mpz_ptr_t)ivar_8, (mpq_ptr_t)ivar_9);

        
        return result;
}

basic_bellman_ford__flattened__example_record_0_t basic_bellman_ford__flattened__example__u(uint8_t ivar_1){
        basic_bellman_ford__flattened__example_record_0_t  result;
        bool_t ivar_2;
        uint8_t ivar_4;
        ivar_4 = (uint8_t)2;
        ivar_2 = (ivar_1 == ivar_4);
        if (ivar_2){ 
             /* N */ mpz_ptr_t ivar_8;
             mpz_mk_set(ivar_8, basic_bellman_ford__flattened__example__N());
             uint8_t ivar_10;
             ivar_10 = (uint8_t)0;
             mpq_ptr_t ivar_9;
             //copying to mpq from uint8;
             mpq_mk_set_ui(ivar_9, ivar_10);
             result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__r2er((mpz_ptr_t)ivar_8, (mpq_ptr_t)ivar_9);
} else {
        
             /* N */ mpz_ptr_t ivar_11;
             mpz_mk_set(ivar_11, basic_bellman_ford__flattened__example__N());
             result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__inf((mpz_ptr_t)ivar_11);
};

        
        return result;
}

basic_bellman_ford__flattened__example_record_0_t basic_bellman_ford__flattened__example__v(uint8_t ivar_1){
        basic_bellman_ford__flattened__example_record_0_t  result;
        bool_t ivar_2;
        uint8_t ivar_4;
        ivar_4 = (uint8_t)1;
        ivar_2 = (ivar_1 == ivar_4);
        if (ivar_2){ 
             /* N */ mpz_ptr_t ivar_8;
             mpz_mk_set(ivar_8, basic_bellman_ford__flattened__example__N());
             uint8_t ivar_10;
             ivar_10 = (uint8_t)0;
             mpq_ptr_t ivar_9;
             //copying to mpq from uint8;
             mpq_mk_set_ui(ivar_9, ivar_10);
             result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__r2er((mpz_ptr_t)ivar_8, (mpq_ptr_t)ivar_9);
} else {
        
             /* N */ mpz_ptr_t ivar_11;
             mpz_mk_set(ivar_11, basic_bellman_ford__flattened__example__N());
             result = (basic_bellman_ford__flattened__example_record_0_t)basic_bellman_ford__flattened__inf((mpz_ptr_t)ivar_11);
};

        
        return result;
}

basic_bellman_ford__flattened__example_funtype_1_t basic_bellman_ford__flattened__example__G(uint8_t ivar_1){
        basic_bellman_ford__flattened__example_funtype_1_t  result;
        bool_t ivar_3;
        uint8_t ivar_5;
        ivar_5 = (uint8_t)0;
        ivar_3 = (ivar_1 == ivar_5);
        if (ivar_3){ 
             basic_bellman_ford__flattened__example_closure_2_t cl4965;
             cl4965 = new_basic_bellman_ford__flattened__example_closure_2();
             result = (basic_bellman_ford__flattened__example_funtype_1_t)cl4965;
} else {
        
             bool_t ivar_9;
             uint8_t ivar_11;
             ivar_11 = (uint8_t)1;
             ivar_9 = (ivar_1 == ivar_11);
             if (ivar_9){  
           basic_bellman_ford__flattened__example_closure_3_t cl4966;
           cl4966 = new_basic_bellman_ford__flattened__example_closure_3();
           result = (basic_bellman_ford__flattened__example_funtype_1_t)cl4966;
} else {
             
           basic_bellman_ford__flattened__example_closure_4_t cl4967;
           cl4967 = new_basic_bellman_ford__flattened__example_closure_4();
           result = (basic_bellman_ford__flattened__example_funtype_1_t)cl4967;
};
};

        
        return result;
}

bool_t basic_bellman_ford__flattened__example__sanity_check(void){
        bool_t  static  result;

        static bool_t defined = false;
        if (!defined){
                    basic_bellman_ford__flattened__example_record_5_t ivar_1;
        basic_bellman_ford__flattened__example_funtype_6_t ivar_6;
        /* N */ mpz_ptr_t ivar_18;
        mpz_mk_set(ivar_18, basic_bellman_ford__flattened__example__N());
        basic_bellman_ford__flattened__example_funtype_7_t ivar_19;
        basic_bellman_ford__flattened__example_closure_8_t cl5002;
        cl5002 = new_basic_bellman_ford__flattened__example_closure_8();
        ivar_19 = (basic_bellman_ford__flattened__example_funtype_7_t)cl5002;
        uint8_t ivar_22;
        ivar_22 = (uint8_t)1;
        ivar_6 = (basic_bellman_ford__flattened__example_funtype_6_t)basic_bellman_ford__flattened__Bellman_Ford_parallel((mpz_ptr_t)ivar_18, (basic_bellman_ford__flattened_funtype_6_t)ivar_19, (mpz_ptr_t)ivar_22);
        uint8_t ivar_23;
        ivar_23 = (uint8_t)2;
        ivar_1 = (basic_bellman_ford__flattened__example_record_5_t)ivar_6->ftbl->fptr(ivar_6, ivar_23);
        ivar_6->ftbl->rptr(ivar_6);
        basic_bellman_ford__flattened__example_record_10_t ivar_2;
        uint8_t ivar_24;
        ivar_24 = (uint8_t)1;
        basic_bellman_ford__flattened__example_record_9_t ivar_27;
        bool_t ivar_25;
        ivar_25 = (bool_t) true;
        uint8_t ivar_26;
        ivar_26 = (uint8_t)0;
        basic_bellman_ford__flattened__example_record_9_t tmp5003 = new_basic_bellman_ford__flattened__example_record_9();;
        ivar_27 = (basic_bellman_ford__flattened__example_record_9_t)tmp5003;
        tmp5003->project_1 = (bool_t)ivar_25;
        tmp5003->project_2 = (uint8_t)ivar_26;
        basic_bellman_ford__flattened__example_record_10_t tmp5004 = new_basic_bellman_ford__flattened__example_record_10();;
        ivar_2 = (basic_bellman_ford__flattened__example_record_10_t)tmp5004;
        tmp5004->pv = (uint8_t)ivar_24;
        tmp5004->w = (basic_bellman_ford__flattened__example_record_9_t)ivar_27;
        result = (bool_t) equal_basic_bellman_ford__flattened__example_record_5(ivar_1, ivar_2);

        defined = true;};
        
        return result;
}