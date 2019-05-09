/*******************************************************************/
/*                                                                 */
/* This is the C++ source code of the flx-init application         */
/*                                                                 */
/* Author: Markus Joos, CERN                                       */
/*                                                                 */
/**C 2016 Ecosoft - Made from at least 80% recycled source code*****/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <strings.h>
#include <string.h>
#include <sys/file.h>
#include "version.h"

#include "DFDebug/DFDebug.h"
#include "wupper/Wupper.h"
#include "wupper/WupperException.h"

#define APPLICATION_NAME             "wupper-init"
#define REGS_SI5324                  43
#define REGS_SI5345_PAGE_0           52
#define REGS_SI5345_PAGE_1           45
#define REGS_SI5345_PAGE_2           24
#define REGS_SI5345_PAGE_3           4
#define REGS_SI5345_PAGE_4           1
#define REGS_SI5345_PAGE_5           25
#define REGS_SI5345_PAGE_9           4
#define REGS_SI5345_PAGE_A           4
#define REGS_SI5345_PAGE_B           3
#define ICS8N_REGS                   25
#define REGS_NEWSTYLE_T3             525


//Prototypes
//void si5345_clock_set(int insel);
static void check_sfp_los();



//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//1) Open the header file and copy the long array to here
//2) Remove the "," from the end of the array
//3) Set REGS_NEWSTYLE to the number found in the header file. E.g.: "#define SI5345_REVB_REG_CONFIG_NUM_REGS 384"
//4) Change the data type of the array to: "u_short newstyle[REGS_NEWSTYLE][2] ="
//5) Remove the re-programming of the I2C address: {0x000B, 0x68 } (should be the third address / value pair)
//6) decrement REGS_NEWSTYLE by one
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>


//The data below is from Si5345_RevD-711_4008-BNL711_8x240-Registers.h
u_short newstyle_t3[REGS_NEWSTYLE_T3][2] =
{
  {0x0B24, 0xC0},{0x0B25, 0x00},{0x0540, 0x01},{0x0006, 0x00},{0x0007, 0x00},{0x0008, 0x00},{0x0016, 0x02},{0x0017, 0xDC},{0x0018, 0x44},{0x0019, 0xDD},
  {0x001A, 0xDF},{0x002B, 0x02},{0x002C, 0x0B},{0x002D, 0x45},{0x002E, 0x44},{0x002F, 0x00},{0x0030, 0x44},{0x0031, 0x00},{0x0032, 0x00},{0x0033, 0x00},
  {0x0034, 0x44},{0x0035, 0x00},{0x0036, 0x44},{0x0037, 0x00},{0x0038, 0x44},{0x0039, 0x00},{0x003A, 0x00},{0x003B, 0x00},{0x003C, 0x44},{0x003D, 0x00},
  {0x003F, 0xBB},{0x0040, 0x04},{0x0041, 0x0C},{0x0042, 0x0C},{0x0043, 0x00},{0x0044, 0x0C},{0x0045, 0x0C},{0x0046, 0x32},{0x0047, 0x32},{0x0048, 0x00},
  {0x0049, 0x32},{0x004A, 0x32},{0x004B, 0x32},{0x004C, 0x00},{0x004D, 0x32},{0x004E, 0x55},{0x004F, 0x50},{0x0050, 0x0F},{0x0051, 0x03},{0x0052, 0x03},
  {0x0053, 0x00},{0x0054, 0x03},{0x0055, 0x03},{0x0056, 0x03},{0x0057, 0x00},{0x0058, 0x03},{0x0059, 0x45},{0x005A, 0x31},{0x005B, 0xC1},{0x005C, 0xD5},
  {0x005D, 0x00},{0x005E, 0x31},{0x005F, 0xC1},{0x0060, 0xD5},{0x0061, 0x00},{0x0062, 0x00},{0x0063, 0x00},{0x0064, 0x00},{0x0065, 0x00},{0x0066, 0x31},
  {0x0067, 0xC1},{0x0068, 0xD5},{0x0069, 0x00},{0x0092, 0x02},{0x0093, 0xA0},{0x0095, 0x00},{0x0096, 0x80},{0x0098, 0x60},{0x009A, 0x02},{0x009B, 0x60},
  {0x009D, 0x04},{0x009E, 0x40},{0x00A0, 0x20},{0x00A2, 0x00},{0x00A9, 0xF1},{0x00AA, 0x31},{0x00AB, 0x00},{0x00AC, 0x00},{0x00E5, 0x21},{0x00EA, 0x05},
  {0x00EB, 0x30},{0x00EC, 0x00},{0x00ED, 0x00},{0x0102, 0x01},{0x0108, 0x06},{0x0109, 0x09},{0x010A, 0x3E},{0x010B, 0x18},{0x010D, 0x06},{0x010E, 0x09},
  {0x010F, 0x3E},{0x0110, 0x18},{0x0112, 0x06},{0x0113, 0x09},{0x0114, 0x3E},{0x0115, 0x18},{0x0117, 0x06},{0x0118, 0x09},{0x0119, 0x3E},{0x011A, 0x18},
  {0x011C, 0x06},{0x011D, 0x09},{0x011E, 0x3E},{0x011F, 0x18},{0x0121, 0x06},{0x0122, 0x09},{0x0123, 0x3E},{0x0124, 0x18},{0x0126, 0x06},{0x0127, 0x09},
  {0x0128, 0x3E},{0x0129, 0x18},{0x012B, 0x06},{0x012C, 0x09},{0x012D, 0x3E},{0x012E, 0x18},{0x0130, 0x06},{0x0131, 0x09},{0x0132, 0x3E},{0x0133, 0x18},
  {0x013A, 0x02},{0x013B, 0x09},{0x013C, 0x3E},{0x013D, 0x18},{0x013F, 0x00},{0x0140, 0x08},{0x0141, 0x40},{0x0142, 0xFF},{0x0206, 0x00},{0x0208, 0x19},
  {0x0209, 0x00},{0x020A, 0x00},{0x020B, 0x00},{0x020C, 0x00},{0x020D, 0x00},{0x020E, 0x01},{0x020F, 0x00},{0x0210, 0x00},{0x0211, 0x00},{0x0212, 0x19},
  {0x0213, 0x00},{0x0214, 0x00},{0x0215, 0x00},{0x0216, 0x00},{0x0217, 0x00},{0x0218, 0x01},{0x0219, 0x00},{0x021A, 0x00},{0x021B, 0x00},{0x021C, 0x00},
  {0x021D, 0x00},{0x021E, 0x00},{0x021F, 0x00},{0x0220, 0x00},{0x0221, 0x00},{0x0222, 0x00},{0x0223, 0x00},{0x0224, 0x00},{0x0225, 0x00},{0x0226, 0x19},
  {0x0227, 0x00},{0x0228, 0x00},{0x0229, 0x00},{0x022A, 0x00},{0x022B, 0x00},{0x022C, 0x01},{0x022D, 0x00},{0x022E, 0x00},{0x022F, 0x00},{0x0231, 0x0B},
  {0x0232, 0x0B},{0x0233, 0x0B},{0x0234, 0x0B},{0x0235, 0x00},{0x0236, 0x00},{0x0237, 0x40},{0x0238, 0xFA},{0x0239, 0x11},{0x023A, 0x01},{0x023B, 0x00},
  {0x023C, 0x00},{0x023D, 0x00},{0x023E, 0xFA},{0x024A, 0x00},{0x024B, 0x00},{0x024C, 0x00},{0x024D, 0x00},{0x024E, 0x00},{0x024F, 0x00},{0x0250, 0x00},
  {0x0251, 0x00},{0x0252, 0x00},{0x0253, 0x00},{0x0254, 0x00},{0x0255, 0x00},{0x0256, 0x00},{0x0257, 0x00},{0x0258, 0x00},{0x0259, 0x00},{0x025A, 0x00},
  {0x025B, 0x00},{0x025C, 0x00},{0x025D, 0x00},{0x025E, 0x00},{0x025F, 0x00},{0x0260, 0x00},{0x0261, 0x00},{0x0262, 0x00},{0x0263, 0x00},{0x0264, 0x00},
  {0x0268, 0x05},{0x0269, 0x00},{0x026A, 0x00},{0x026B, 0x37},{0x026C, 0x31},{0x026D, 0x31},{0x026E, 0x5F},{0x026F, 0x34},{0x0270, 0x30},{0x0271, 0x30},
  {0x0272, 0x38},{0x028A, 0x00},{0x028B, 0x00},{0x028C, 0x00},{0x028D, 0x00},{0x028E, 0x00},{0x028F, 0x00},{0x0290, 0x00},{0x0291, 0x00},{0x0294, 0xC0},
  {0x0296, 0x02},{0x0297, 0x02},{0x0299, 0x02},{0x029D, 0x19},{0x029E, 0x01},{0x029F, 0x00},{0x02A9, 0x66},{0x02AA, 0x02},{0x02AB, 0x00},{0x02B7, 0xFF},
  {0x0302, 0x00},{0x0303, 0x00},{0x0304, 0x00},{0x0305, 0x00},{0x0306, 0x0E},{0x0307, 0x00},{0x0308, 0x00},{0x0309, 0x00},{0x030A, 0x00},{0x030B, 0x80},
  {0x030C, 0x00},{0x030D, 0x00},{0x030E, 0x00},{0x030F, 0x00},{0x0310, 0x00},{0x0311, 0x00},{0x0312, 0x00},{0x0313, 0x00},{0x0314, 0x00},{0x0315, 0x00},
  {0x0316, 0x00},{0x0317, 0x00},{0x0318, 0x00},{0x0319, 0x00},{0x031A, 0x00},{0x031B, 0x00},{0x031C, 0x00},{0x031D, 0x00},{0x031E, 0x00},{0x031F, 0x00},
  {0x0320, 0x00},{0x0321, 0x00},{0x0322, 0x00},{0x0323, 0x00},{0x0324, 0x00},{0x0325, 0x00},{0x0326, 0x00},{0x0327, 0x00},{0x0328, 0x00},{0x0329, 0x00},
  {0x032A, 0x00},{0x032B, 0x00},{0x032C, 0x00},{0x032D, 0x00},{0x032E, 0x00},{0x032F, 0x00},{0x0330, 0x00},{0x0331, 0x00},{0x0332, 0x00},{0x0333, 0x00},
  {0x0334, 0x00},{0x0335, 0x00},{0x0336, 0x00},{0x0337, 0x00},{0x0338, 0x00},{0x0339, 0x1F},{0x033B, 0x00},{0x033C, 0x00},{0x033D, 0x00},{0x033E, 0x00},
  {0x033F, 0x00},{0x0340, 0x00},{0x0341, 0x00},{0x0342, 0x00},{0x0343, 0x00},{0x0344, 0x00},{0x0345, 0x00},{0x0346, 0x00},{0x0347, 0x00},{0x0348, 0x00},
  {0x0349, 0x00},{0x034A, 0x00},{0x034B, 0x00},{0x034C, 0x00},{0x034D, 0x00},{0x034E, 0x00},{0x034F, 0x00},{0x0350, 0x00},{0x0351, 0x00},{0x0352, 0x00},
  {0x0353, 0x00},{0x0354, 0x00},{0x0355, 0x00},{0x0356, 0x00},{0x0357, 0x00},{0x0358, 0x00},{0x0359, 0x00},{0x035A, 0x00},{0x035B, 0x00},{0x035C, 0x00},
  {0x035D, 0x00},{0x035E, 0x00},{0x035F, 0x00},{0x0360, 0x00},{0x0361, 0x00},{0x0362, 0x00},{0x0487, 0x01},{0x0508, 0x10},{0x0509, 0x1F},{0x050A, 0x0C},
  {0x050B, 0x0B},{0x050C, 0x3F},{0x050D, 0x3F},{0x050E, 0x14},{0x050F, 0x29},{0x0510, 0x08},{0x0511, 0x07},{0x0512, 0x3F},{0x0513, 0x3F},{0x0515, 0x00},
  {0x0516, 0x00},{0x0517, 0x00},{0x0518, 0x00},{0x0519, 0x48},{0x051A, 0x03},{0x051B, 0x00},{0x051C, 0x00},{0x051D, 0x00},{0x051E, 0x00},{0x051F, 0x80},
  {0x0521, 0x2B},{0x052A, 0x00},{0x052B, 0x01},{0x052C, 0x87},{0x052D, 0x03},{0x052E, 0x19},{0x052F, 0x19},{0x0531, 0x00},{0x0532, 0x10},{0x0533, 0x04},
  {0x0534, 0x00},{0x0535, 0x00},{0x0536, 0x00},{0x0537, 0x00},{0x0538, 0x00},{0x0539, 0x00},{0x053A, 0x02},{0x053B, 0x03},{0x053C, 0x00},{0x053D, 0x11},
  {0x053E, 0x06},{0x0589, 0x0E},{0x058A, 0x00},{0x059B, 0xFA},{0x059D, 0x10},{0x059E, 0x21},{0x059F, 0x0C},{0x05A0, 0x0B},{0x05A1, 0x3F},{0x05A2, 0x3F},
  {0x05A6, 0x0B},{0x0802, 0x35},{0x0803, 0x05},{0x0804, 0x00},{0x0805, 0x00},{0x0806, 0x00},{0x0807, 0x00},{0x0808, 0x00},{0x0809, 0x00},{0x080A, 0x00},
  {0x080B, 0x00},{0x080C, 0x00},{0x080D, 0x00},{0x080E, 0x00},{0x080F, 0x00},{0x0810, 0x00},{0x0811, 0x00},{0x0812, 0x00},{0x0813, 0x00},{0x0814, 0x00},
  {0x0815, 0x00},{0x0816, 0x00},{0x0817, 0x00},{0x0818, 0x00},{0x0819, 0x00},{0x081A, 0x00},{0x081B, 0x00},{0x081C, 0x00},{0x081D, 0x00},{0x081E, 0x00},
  {0x081F, 0x00},{0x0820, 0x00},{0x0821, 0x00},{0x0822, 0x00},{0x0823, 0x00},{0x0824, 0x00},{0x0825, 0x00},{0x0826, 0x00},{0x0827, 0x00},{0x0828, 0x00},
  {0x0829, 0x00},{0x082A, 0x00},{0x082B, 0x00},{0x082C, 0x00},{0x082D, 0x00},{0x082E, 0x00},{0x082F, 0x00},{0x0830, 0x00},{0x0831, 0x00},{0x0832, 0x00},
  {0x0833, 0x00},{0x0834, 0x00},{0x0835, 0x00},{0x0836, 0x00},{0x0837, 0x00},{0x0838, 0x00},{0x0839, 0x00},{0x083A, 0x00},{0x083B, 0x00},{0x083C, 0x00},
  {0x083D, 0x00},{0x083E, 0x00},{0x083F, 0x00},{0x0840, 0x00},{0x0841, 0x00},{0x0842, 0x00},{0x0843, 0x00},{0x0844, 0x00},{0x0845, 0x00},{0x0846, 0x00},
  {0x0847, 0x00},{0x0848, 0x00},{0x0849, 0x00},{0x084A, 0x00},{0x084B, 0x00},{0x084C, 0x00},{0x084D, 0x00},{0x084E, 0x00},{0x084F, 0x00},{0x0850, 0x00},
  {0x0851, 0x00},{0x0852, 0x00},{0x0853, 0x00},{0x0854, 0x00},{0x0855, 0x00},{0x0856, 0x00},{0x0857, 0x00},{0x0858, 0x00},{0x0859, 0x00},{0x085A, 0x00},
  {0x085B, 0x00},{0x085C, 0x00},{0x085D, 0x00},{0x085E, 0x00},{0x085F, 0x00},{0x0860, 0x00},{0x0861, 0x00},{0x090E, 0x02},{0x0943, 0x00},{0x0949, 0x0B},
  {0x094A, 0x0B},{0x094E, 0x49},{0x094F, 0x02},{0x095E, 0x00},{0x0A02, 0x00},{0x0A03, 0x01},{0x0A04, 0x01},{0x0A05, 0x01},{0x0A14, 0x00},{0x0A1A, 0x00},
  {0x0A20, 0x00},{0x0A26, 0x00},{0x0A2C, 0x00},{0x0B44, 0x2F},{0x0B46, 0x00},{0x0B47, 0x04},{0x0B48, 0x04},{0x0B4A, 0x1E},{0x0B57, 0x0E},{0x0B58, 0x01},
  {0x0514, 0x01},{0x001C, 0x01},{0x0540, 0x00},{0x0B24, 0xC3},{0x0B25, 0x02}
};

//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

u_short ics8nregs[ICS8N_REGS][2] =
{
  {0x12, 0xB8},{0x00, 0x2A},{0x01, 0x2A},{0x02, 0x25},{0x03, 0x25},{0x04, 0x15},{0x05, 0x00},{0x06, 0xDF},{0x07, 0xCC},{0x08, 0x4D},
  {0x09, 0x10},{0x0A, 0xF8},{0x0B, 0xDC},{0x0C, 0x0A},{0x0D, 0x8A},{0x0E, 0x92},{0x0F, 0x12},{0x10, 0x00},{0x11, 0x00},{0x13, 0x00},
  {0x14, 0x1F},{0x15, 0x1F},{0x16, 0x1F},{0x17, 0x1F},{0x12, 0xA0}
};

u_char si5324_240[REGS_SI5324][2] =
{
  {0x00, 0x14}, {0x01, 0xE4}, {0x02, 0xA2}, {0x03, 0x15}, {0x04, 0x12}, {0x05, 0xED}, {0x06, 0x3F}, {0x07, 0x29}, {0x08, 0x00}, {0x09, 0xC0},
  {0x0A, 0x08}, {0x0B, 0x42}, {0x13, 0x09}, {0x14, 0x3E}, {0x15, 0xFF}, {0x16, 0xDF}, {0x17, 0x1F}, {0x18, 0x3F}, {0x19, 0xE0}, {0x1F, 0x00},
  {0x20, 0x00}, {0x21, 0x01}, {0x22, 0x00}, {0x23, 0x00}, {0x24, 0x01}, {0x28, 0xE0}, {0x29, 0x00}, {0x2A, 0xF5}, {0x2B, 0x00}, {0x2C, 0x00},
  {0x2D, 0x51}, {0x2E, 0x00}, {0x2F, 0x00}, {0x30, 0x51}, {0x37, 0x1B}, {0x83, 0x1F}, {0x84, 0x02}, {0x89, 0x01}, {0x8A, 0x0F}, {0x8B, 0xFF},
  {0x8E, 0x00}, {0x8F, 0x00}, {0x88, 0x40},
};

u_char si5324_156[REGS_SI5324][2] =
{
 {  0, 0x14},
 {  1, 0xE4},
 {  2, 0x82},
 {  3, 0x15},
 {  4, 0x92},
 {  5, 0xED},
 {  6, 0x3F},
 {  7, 0x29},
 {  8, 0x00},
 {  9, 0xC0},
 { 10, 0x00},
 { 11, 0x40},
 { 19, 0x29},
 { 20, 0x3E},
 { 21, 0xFE},
 { 22, 0xDF},
 { 23, 0x1F},
 { 24, 0x3F},
 { 25, 0x40},
 { 31, 0x00},
 { 32, 0x00},
 { 33, 0x05},
 { 34, 0x00},
 { 35, 0x00},
 { 36, 0x05},
 { 40, 0xA0},
 { 41, 0x01},
 { 42, 0x3B},
 { 43, 0x00},
 { 44, 0x00},
 { 45, 0x4E},
 { 46, 0x00},
 { 47, 0x00},
 { 48, 0x4E},
 { 55, 0x1B},
 {131, 0x1F},
 {132, 0x02},
 {137, 0x01},
 {138, 0x0F},
 {139, 0xFF},
 {142, 0x00},
 {143, 0x00},
 {136, 0x40},
 };

u_char si5345_240_page_0[REGS_SI5345_PAGE_0][2] =
{
  {0x16, 0x02}, {0x17, 0x1C}, {0x18, 0x44}, {0x19, 0xDD}, {0x1A, 0xDF}, {0x2B, 0x02}, {0x2C, 0x0B}, {0x2D, 0x45}, {0x2E, 0x46},
  {0x30, 0x46}, {0x34, 0x46}, {0x36, 0x46}, {0x38, 0x46}, {0x3C, 0x46}, {0x3F, 0xBB}, {0x40, 0x04}, {0x41, 0x0C}, {0x42, 0x0C}, {0x44, 0x0C}, 
  {0x45, 0x0C}, {0x46, 0x32}, {0x47, 0x32}, {0x49, 0x32}, {0x4A, 0x32}, {0x4B, 0x32}, {0x4D, 0x32}, {0x4E, 0x55}, {0x4F, 0x50}, {0x51, 0x03}, 
  {0x52, 0x03}, {0x54, 0x03}, {0x55, 0x03}, {0x56, 0x03}, {0x58, 0x03}, {0x59, 0xCF}, {0x5A, 0x31}, {0x5B, 0xC1}, {0x5C, 0xD5}, {0x5E, 0x31}, 
  {0x5F, 0xC1}, {0x60, 0xD5}, {0x66, 0x31}, {0x67, 0xC1}, {0x68, 0xD5}, {0x9A, 0x02}, {0x9B, 0x30}, {0x9E, 0x50}, {0xA0, 0x30}, {0xA2, 0x02}, 
  {0xA8, 0xF7}, {0xA9, 0x1F}, {0xAA, 0x01}
};


u_char si5345_240_page_1[REGS_SI5345_PAGE_1][2] =
{
  {0x02, 0x01}, {0x08, 0x06}, {0x09, 0x09}, {0x0A, 0x3D}, {0x0B, 0x00}, {0x0D, 0x06}, {0x0E, 0x09}, {0x0F, 0x3D}, {0x10, 0x00}, {0x12, 0x06},
  {0x13, 0x09}, {0x14, 0x3D}, {0x15, 0x00}, {0x17, 0x06}, {0x18, 0x09}, {0x19, 0x3D}, {0x1A, 0x00}, {0x1C, 0x01}, {0x1D, 0x09}, {0x1E, 0x3B},
  {0x1F, 0x00}, {0x21, 0x01}, {0x22, 0x09}, {0x23, 0x3B}, {0x24, 0x00}, {0x26, 0x01}, {0x27, 0x09}, {0x28, 0x3B}, {0x29, 0x00}, {0x2B, 0x01},
  {0x2C, 0x09}, {0x2D, 0x3B}, {0x2E, 0x00}, {0x30, 0x01}, {0x31, 0x09}, {0x32, 0x3B}, {0x33, 0x00}, {0x3A, 0x02}, {0x3B, 0x09}, {0x3C, 0x3D},
  {0x3D, 0x00}, {0x3F, 0x00}, {0x40, 0x08}, {0x41, 0x40}, {0x42, 0xFF}
};


u_char si5345_240_page_2[REGS_SI5345_PAGE_2][2] =
{
  {0x08, 0x19}, {0x0E, 0x01}, {0x12, 0x19}, {0x18, 0x01}, {0x26, 0x19}, {0x2C, 0x01}, {0x31, 0x01}, {0x32, 0x01}, {0x33, 0x01}, {0x34, 0x01},
  {0x37, 0x30}, {0x38, 0xC3}, {0x39, 0x1B}, {0x3A, 0x01}, {0x3E, 0xFA}, {0x68, 0x05}, {0x6B, 0x73}, {0x6C, 0x69}, {0x6D, 0x34}, {0x6E, 0x30},
  {0x6F, 0x5F}, {0x70, 0x32}, {0x71, 0x34}, {0x72, 0x30}
};

u_char si5345_240_page_3[REGS_SI5345_PAGE_3][2] =
{
  {0x05, 0x80}, {0x06, 0x0E}, {0x0B, 0x80}, {0x39, 0x1F}
};

u_char si5345_240_page_4[REGS_SI5345_PAGE_4][2] =
{
  {0x87, 0x01}
};

u_char si5345_240_page_5[REGS_SI5345_PAGE_5][2] =
{
{0x02, 0x01}, {0x08, 0x15}, {0x09, 0x27}, {0x0A, 0x0A}, {0x0B, 0x09}, {0x0C, 0x0F}, {0x0D, 0x3F}, {0x0E, 0x16}, {0x0F, 0x2B}, {0x10, 0x09}, 
{0x11, 0x08}, {0x12, 0x0F}, {0x13, 0x3F}, {0x19, 0x66}, {0x1A, 0x03}, {0x1F, 0x80}, {0x21, 0x21}, {0x2B, 0x01}, {0x2C, 0x0F}, {0x2D, 0x03}, 
{0x2E, 0x19}, {0x2F, 0x19}, {0x32, 0x10}, {0x33, 0x04}, {0x36, 0x0C}
};

u_char si5345_240_page_9[REGS_SI5345_PAGE_9][2] =
{
  {0x0E, 0x02}, {0x49, 0x0B}, {0x4A, 0x0B}
};

u_char si5345_240_page_a[REGS_SI5345_PAGE_A][2] =
{
  {0x03, 0x01}, {0x04, 0x01}, {0x05, 0x01}
};

u_char si5345_240_page_b[REGS_SI5345_PAGE_B][2] =
{
  {0x44, 0x2F}, {0x48, 0x04}, {0x4A, 0x1E}
};


//Globals
WupperCard wupperCard;
u_long baraddr2;
int verbose = 0;
u_long card_model = 0;


/*****************/
void display_help()
/*****************/
{
  printf("Usage: %s [OPTIONS]\n", APPLICATION_NAME);
  printf("Initializes a WUPPER device.\n\n");
  printf("General options:\n");
  printf("  -d NUMBER                    Use card indicated by NUMBER. Default: 0.\n");
  printf("  -h                           Display help.\n");
  printf("  -D level                     Configure debug output at API level. 0=disabled, 5, 10, 20 progressively more verbose output. Default: 0.\n");
  printf("  -v                           Display verbose output.\n");
  printf("  -V                           Display the version number\n");
  printf("GBT calibration options:\n");
  printf("  -a ONE|CONTIUNOUS            Select alignment type. Default: ONE.\n");
  printf("  -t FEC|WideBus               Select transmission mode. Default: FEC.\n");
  printf("TTC calibration options:\n");
  printf("  -G NUMBER                    Get and display the status of a SI53xx\n");
  printf("                               Legal values are:\n");
  printf("                               1 = SI5324\n");
  printf("                               2 = SI5345\n");
  printf("  -C                           Set the registers of the ICS 8N4Q001L\n");
  printf("  -T mode                      Set a clock to a given frequency\n");
  printf("                               Legal values for mode are:\n");
  printf("                               -T not in command line     = automatic default configuration\n");
  printf("                               -T 0,1,2,3,etc.            = special configuration (currently not supported)\n");
  printf("     -I INSEL                  To be used in combination with -T. The value given will be written into register HK_CTRL_FMC_SI5345_INSEL\n");
  printf("                               Legal values are:\n");
  printf("                               WUPPER-709: 0-->FPGA (LA01), 1-->FMC OSC, 2-->FPGA (LA18)\n");
}


/***********************/
void str_upper(char *str)
/***********************/
{
  do
  {
    *str = toupper((u_char) *str);
  } while (*str++);
}


/*************************/
void si5324_clock_set(void)
/*************************/
{
  u_char result;
  u_int loop;

  for (loop = 0; loop < REGS_SI5324; loop++)
  {
    if(verbose)
       printf("Writing 0x%x to register 0x%04x\n", si5324_156[loop][1], si5324_156[loop][0]);
    wupperCard.i2c_devices_write("REC_CLOCK", si5324_156[loop][0], si5324_156[loop][1]);
    wupperCard.i2c_devices_read("REC_CLOCK", si5324_156[loop][0], &result);
    if(result != si5324_156[loop][1] && si5324_156[loop][0] != 0x88)
      printf("ERROR: Address: 0x%04x, Written: 0x%02x, Read: 0x%02x\n", si5324_156[loop][0], si5324_156[loop][1], result);
  }

  printf("Clock configuration done.\n");

  wupperCard.i2c_devices_read("REC_CLOCK", 0x81, &result);
  printf("Decoding register 129 (raw data = 0x%02x)\n", result);
  //printf("LOS2_INT: %s\n", (result & 0x4)?"Error: CLK2 LOS":"CLK2 OK");
  while(true){
    wupperCard.i2c_devices_read("REC_CLOCK", 0x82, &result);
    printf("Decoding register 130 (raw data = 0x%02x)\n", result);
    printf("LOL_INT:  %s\n", (result & 0x1)?"PLL unlocked":"PLL locked");
    if((result & 0x1) == 0){
	  break;
	  }
    sleep(1);
  }
}


/****************************/
void ttc_get_regs(int si_type)
/****************************/
{
  u_int loop;
  u_char regdata, result;

  if(si_type != 1 && si_type != 2)
  {
    printf("ERROR: SI type %d is not supported\n", si_type);
    return;
  }

  if(card_model == WUPPER_709)
  {
    wupperCard.i2c_devices_read("REC_CLOCK", 0x81, &result);
    printf("LSB of register lock register 0x81 = %d\n", result & 0x1);
    wupperCard.i2c_devices_read("REC_CLOCK", 0x82, &result);
    printf("LSB of register lock register 0x81 = %d\n", result & 0x1);
  }

  if(si_type == 1)
  {
    for (loop = 0; loop < REGS_SI5324; loop++)
    {
      if(verbose)
        printf("Reading from register %d\n", si5324_240[loop][0]);

      wupperCard.i2c_devices_read("REC_CLOCK", si5324_240[loop][0], &regdata);
      printf("A: %3d = 0x%02x\n", si5324_240[loop][0], regdata);
    }
  }

  if(si_type == 2)
  { 
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x00);   //turn the page to 0
    for (loop = 0; loop < REGS_SI5345_PAGE_0; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 0\n", si5345_240_page_0[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_0[loop][0], &regdata);
      printf("P: 0, A: %3d = 0x%02x\n", si5345_240_page_0[loop][0], regdata);
    }

    wupperCard.i2c_devices_write("SI5345", 0x01, 0x01);   //turn the page to 1
    for (loop = 0; loop < REGS_SI5345_PAGE_1; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 1\n", si5345_240_page_1[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_1[loop][0], &regdata);
      printf("P: 1, A: %3d = 0x%02x\n", si5345_240_page_1[loop][0], regdata);
    }

    wupperCard.i2c_devices_write("SI5345", 0x01, 0x02);   //turn the page to 2
    for (loop = 0; loop < REGS_SI5345_PAGE_2; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 2\n", si5345_240_page_2[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_2[loop][0], &regdata);
      printf("P: 2, A: %3d = 0x%02x\n", si5345_240_page_2[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x03);   //turn the page to 3
    for (loop = 0; loop < REGS_SI5345_PAGE_3; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 3\n", si5345_240_page_3[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_3[loop][0], &regdata);
      printf("P: 3, A: %3d = 0x%02x\n", si5345_240_page_3[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x04);   //turn the page to 4
    for (loop = 0; loop < REGS_SI5345_PAGE_4; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 4\n", si5345_240_page_4[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_4[loop][0], &regdata);
      printf("P: 4, A: %3d = 0x%02x\n", si5345_240_page_4[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x05);   //turn the page to 5
    for (loop = 0; loop < REGS_SI5345_PAGE_5; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 5\n", si5345_240_page_5[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_5[loop][0], &regdata);
      printf("P: 5, A: %3d = 0x%02x\n", si5345_240_page_5[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x09);   //turn the page to 9
    for (loop = 0; loop < REGS_SI5345_PAGE_9; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page 9\n", si5345_240_page_9[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_9[loop][0], &regdata);
      printf("P: 9, A: %3d = 0x%02x\n", si5345_240_page_9[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x0a);   //turn the page to a
    for (loop = 0; loop < REGS_SI5345_PAGE_A; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page a\n", si5345_240_page_a[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_a[loop][0], &regdata);
      printf("P: a, A: %3d = 0x%02x\n", si5345_240_page_a[loop][0], regdata);
    }
    
    wupperCard.i2c_devices_write("SI5345", 0x01, 0x0b);   //turn the page to b
    for (loop = 0; loop < REGS_SI5345_PAGE_B; loop++)
    {
      if(verbose)
	 printf("Reading from register 0x%04x of page b\n", si5345_240_page_b[loop][0]);
      wupperCard.i2c_devices_read("SI5345", si5345_240_page_b[loop][0], &regdata);
      printf("P: b, A: %3d = 0x%02x\n", si5345_240_page_b[loop][0], regdata);
    }

    wupperCard.i2c_devices_write("SI5345", 0x01, 0x00);   //turn the page back to 0
  }

  printf("Register dump complete.\n");
}



/*****************************/
int main(int argc, char **argv)
/*****************************/
{
  int insel_value = 0, device_number = 0, opt, alignment_mode = WUPPER_GBT_ALIGNMENT_ONE, transmision_mode = WUPPER_GBT_TMODE_FEC;
  int clock_type = 0, si_type = 1, get_ttc_regs = 0, set_ics = 0, run_los_check = 0;
  int channel_count = WUPPER_GBT_CHANNEL_AUTO, channel_number = 24, debuglevel;

  while((opt = getopt(argc, argv, "phvd:a:t:D:T:G:VI:C")) != -1)
  {
    switch (opt)
    {
    case 'v':
      verbose++;
      break;

    case 'd':
      device_number = atoi(optarg);
      break;

    case 'D':
      debuglevel = atoi(optarg);
      DF::GlobalDebugSettings::setup(debuglevel, DFDB_FELIXCARD);
      break;

    case 'V':
      printf("This is version %s of %s\n", VERSION, APPLICATION_NAME);
      exit(0);

    case 'a':
      run_los_check = 1;
      if(strcasecmp(optarg, "ONE") == 0)
        alignment_mode = WUPPER_GBT_ALIGNMENT_ONE;
      else
      {
        if(strcasecmp(optarg, "CONTINUOUS") == 0)
          alignment_mode = WUPPER_GBT_ALIGNMENT_CONTINUOUS;
        else
        {
          fprintf(stderr, APPLICATION_NAME": error: Wrong alignment mode\n");
          exit(-1);
        }
      }
      break;

    case 't':
      run_los_check = 1;
      if(strcasecmp(optarg, "FEC") == 0)
        transmision_mode = WUPPER_GBT_TMODE_FEC;
      else
      {
        if(strcasecmp(optarg, "WideBus") == 0)
          transmision_mode = WUPPER_GBT_TMODE_WideBus;
        else
        {
          fprintf(stderr, APPLICATION_NAME": error: Wrong transmision mode\n");
          exit(-1);
        }
      }
      break;

    case 'h':
      display_help();
      exit(0);

    case 'T':
      clock_type = atoi(optarg);
      break;

    case 'C':
      set_ics = 1;
      break;
      
    case 'I':
      insel_value = atoi(optarg);
      break;

    case 'G':
      si_type = atoi(optarg);
      get_ttc_regs = 1;
      break;

    default:
      fprintf(stderr, "Usage: %s COMMAND [OPTIONS]\nTry %s -h for more information.\n", APPLICATION_NAME, APPLICATION_NAME);
      exit(-1);
    }
  }

  if(verbose)
  {
    printf("\nWelcome to flx-init tool!\n");
    printf("\n---PARAMETERS USED---\n");
    printf("Device number=        %d\n", device_number);

    if(alignment_mode == WUPPER_GBT_ALIGNMENT_ONE)
      printf("Alignment mode =       ONE ALIGNMENT\n");
    else
      printf("Alignment mode =       CONTINUOUS ALIGNMENT\n");

    if(transmision_mode == WUPPER_GBT_TMODE_FEC)
      printf("Transmision mode =     FEC\n");
    else
      printf("Transmision mode =     WIDE BUS\n");

    if(channel_count == WUPPER_GBT_CHANNEL_AUTO)
      printf("Channels detection =   AUTO\n");
    else
    {
      printf("Channels detection =   MANUAL\n");
      printf("Number of channels =   %d\n", channel_number);
    }
    
    printf("Opening device.....\n");
  }

  try
  {
    wupperCard.card_open(device_number);
    card_model = wupperCard.card_model();
    
    if(run_los_check)
      check_sfp_los();
    
    
    if(card_model == WUPPER_709 && clock_type == 0)
    {
      printf("WUPPER_709 detected. Configuring Si5324\n");  
      si5324_clock_set();
      printf("Performing GBT soft reset\n");
    }

/*    if(clock_type == 0)
    {
      printf("Configuring Si5345\n");  
      si5345_clock_set(insel_value);
      printf("Performing GBT soft reset\n");
    }           
*/
    if(clock_type != 0)
    {
      printf("Special configurations are currently not defined\n");
      exit(-1);
    }

    if (get_ttc_regs)
    {
      ttc_get_regs(si_type);
      wupperCard.card_close();
      exit(0);
    }

    baraddr2 = wupperCard.openBackDoor(2);

    
    if (verbose)
      printf("\nLoading initial configuration.....\n");
    
    if (verbose)
      printf("\nDisabling interrupts\n");
      
    wupperCard.irq_disable(ALL_IRQS);
      
    if (verbose)
      printf("\nClosing device.....");

    wupperCard.card_close();
  }
  catch(WupperException &ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std:: endl;
    exit(-1);
  }

  exit(0);
}


/******************************/
//void si5345_clock_set(int insel)
/******************************/
/*{
  u_char result, i2c_data, i2c_page, i2c_offset;
  u_int loop, current_page = 0, n_registers;

  n_registers = REGS_NEWSTYLE_T3;
  
  //See https://svnweb.cern.ch/cern/wsvn/FELIX/trunk/Hardware/TTCfx/tools/Si5345_40mhz.sh?peg=3907 for the source of inspiration
  //Note: the ".sh" file is in turn derived from a machine-generated ".h" file.
  
  if(card_model != WUPPER_709 && card_model != WUPPER_710 && card_model != WUPPER_711 && card_model != WUPPER_712)
  {
    printf("Error: This function is only supported on a WUPPER-709, WUPPER-710, WUPPER-711 or WUPPER-712\n");
    return;
  }

  printf("Hard resetting the Si5345...\n");
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_SEL", 1);
  if(verbose)
     printf("Writing %d to register HK_CTRL_FMC_SI5345_INSEL\n", insel);
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_INSEL", insel);
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_OE", 1);    sleep(1);
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_RSTN", 0);  sleep(1);
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_RSTN", 1);

  printf("Beginning configuration process....\n");
  for (loop = 0; loop < n_registers; loop++)
  {
    //split page and offset, copy data (just for code beauty)
    i2c_page   = (newstyle_t3[loop][0] >> 8 ) & 0xff;
    i2c_offset = newstyle_t3[loop][0] & 0xff;
    i2c_data   = newstyle_t3[loop][1] & 0xff;   //Just to be sure
    
    //check if we are on the proper page.
    if (current_page != i2c_page)
    { 
      if(verbose)
        printf("Turning the page from 0x%02x to 0x%02x and sleeping for 1 second\n", current_page, i2c_page);
      wupperCard.i2c_devices_write("SI5345", 0x01, i2c_page);
      current_page = i2c_page; 
      //sleep(1);             //Andrea to clarify sleeping policy
    }

    if(verbose)
       printf("Writing 0x%02x to register 0x%04x on page 0x%02x\n", i2c_data, i2c_offset, i2c_page);

    wupperCard.i2c_devices_write("SI5345", i2c_offset, i2c_data);
    
    if(verbose)
    { 
      wupperCard.i2c_devices_read("SI5345", i2c_offset, &result);
      if(result != i2c_data)
      {
	if((i2c_page == 5 && i2c_offset == 0x14) || (i2c_page == 0 && i2c_offset == 0x1c))  //These registers cannot be read back.
	  printf("\n");
	else
	  printf("ERROR on page %d: Address: 0x%04x, Written: 0x%02x, Read: 0x%02x (ignore this error for write-only registers)\n", i2c_page, i2c_offset, i2c_data, result);
      }
    }
  }
  
  printf("Configuration done...\n");
  printf("Enabling output...\n");
  
  if(verbose)
    printf("Turning the page back to 0 and sleeping 1 second\n");
  wupperCard.i2c_devices_write("SI5345", 0x01, 0x00);   //turning page back to 0
  sleep(1);
  
  wupperCard.cfg_set_option("HK_CTRL_FMC_SI5345_OE", 0);
  
  wupperCard.i2c_devices_read("SI5345", 0xd, &result);
  printf("LOS register = 0x%02x\n", result);

  wupperCard.i2c_devices_read("SI5345", 0x12, &result);
  wupperCard.i2c_devices_write("SI5345", 0x12, 0);
  wupperCard.i2c_devices_read("SI5345", 0x12, &result);
  printf("Sticky LOS register = 0x%02x\n", result);

  for (loop = 1; loop < 61; loop++)
  {
    wupperCard.i2c_devices_read("SI5345", 0xe, &result);
    result = result & 0x2;
    printf("LOL register = 0x%02x\n", result);
    if (result == 0)
    {
      printf("Found lock in %d seconds\n", loop);
      break;
    }
    sleep(1);
  }
  
  if (result != 0)
    printf("ERROR: Lock not found\n");

  wupperCard.i2c_devices_read("SI5345", 0x13, &result);
  wupperCard.i2c_devices_write("SI5345", 0x13, 0);
  wupperCard.i2c_devices_read("SI5345", 0x13, &result);
  printf("Sticky LOL register = 0x%02x\n", result);  
}*/


/************************/
void ics8n_clock_set(void)
/************************/
{
  u_char result, i2c_data, i2c_offset;
  u_int loop;

  if(card_model != WUPPER_710)
  {
    printf("Error: This function is only supported on a WUPPER-710\n");
    return;
  }

  printf("Beginning configuration process...\n");
  for (loop = 0; loop < ICS8N_REGS; loop++)
  {
    i2c_offset = ics8nregs[loop][0] & 0xff;   //Just to be sure
    i2c_data   = ics8nregs[loop][1] & 0xff;   //Just to be sure

    if(verbose)
       printf("Writing 0x%02x to register 0x%04x\n", i2c_data, i2c_offset);

    wupperCard.i2c_devices_write("CLOCK_RAM", i2c_offset, i2c_data);
    wupperCard.i2c_devices_read("CLOCK_RAM", i2c_offset, &result);
    if(result != i2c_data)
      printf("ERROR!! Address: 0x%04x, Written: 0x%02x, Read: 0x%02x\n", i2c_offset, i2c_data, result);
  }
  
  printf("Configuration done...\n");
}

/*************************/
static void check_sfp_los()
/*************************/
{
  int cont = 0, cont2 = 0;
  u_char aux_value = 0, rx_lost = 0, loss_os[4], sfp_sequence[4];
  const char *device[8];
  
  if(card_model != WUPPER_709)
  {
    printf("Error: This function is only supported on a WUPPER709\n");
    return;
  }

  device[2] = "SFP1-1";     
  device[1] = "SFP1-2";
  device[0] = "SFP2-1";     
  device[3] = "SFP2-2";
  device[4] = "SFP3-1";
  device[5] = "SFP3-2";
  device[6] = "SFP4-1";
  device[7] = "SFP4-2";
  loss_os[0] = 0;
  loss_os[1] = 0;
  loss_os[2] = 0;
  loss_os[3] = 0;

  try
  {    
    for(cont = 0; cont < 8; cont++)
    {
      cont++; //Switch to enhanced memory.

      if (verbose)
        printf("Reading device %s", device[cont]);

      wupperCard.i2c_devices_read(device[cont], 110, &aux_value);
      rx_lost  = ((aux_value & (1 << 1)) >> 1);
      loss_os[cont2] = rx_lost;
      cont2++;
      if (verbose)
        printf("Loss of Signal estate: %u", rx_lost);

      if (verbose)
      {
	if(rx_lost == 1)
          printf("        Signal not received or under threshold\n");
	else
          printf("        Receiving signal\n");
      }
    }
    
    sfp_sequence[0] = 1;
    sfp_sequence[1] = 0;
    sfp_sequence[2] = 2;
    sfp_sequence[3] = 3;
    
    printf("SFP Link Status:\n");
    for(cont = 0; cont < 4; cont++)
    {
      if(loss_os[sfp_sequence[cont]] == 1)
        printf("warning: channel %d has no fibre connected\n", sfp_sequence[cont]);
      else  
        printf("Info: channel %d has a fibre connected\n", sfp_sequence[cont]);
    }
  }
  catch(WupperException &ex)
  {
    std::cout << "ERROR. Exception thrown: " << ex.what() << std::endl;
    exit(-1);
  }
}



