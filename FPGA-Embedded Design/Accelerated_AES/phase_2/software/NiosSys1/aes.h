#ifndef _AES_H
#define _AES_H

#include "ptypes.h"

#define aes_128 10
#define aes_256 14

#define aes_keyexpsize128 (aes_128+1)*16
#define aes_keyexpsize256 (aes_256+1)*16

void MixSubColumns (uint8 *state);
void AddRoundKey (unsigned *state, unsigned *key);

extern void aes_keyexpand128(uint8 * key,uint8 * keyexp);
extern void ExpandKey (uint8 *key, uint8 *expkey);

extern void aes_blockenc_NOacc(uint8* in, uint8* out, uint8* expkey);
extern void aes_blockenc_SWacc(uint8* src,uint8* dest, uint8* keyexp);
extern void aes_blockenc_HWacc(uint8* src,uint8* dest, uint8* keyexp);

extern void Decrypt (uint8 *in, uint8 *expkey, uint8 *out);

#endif
