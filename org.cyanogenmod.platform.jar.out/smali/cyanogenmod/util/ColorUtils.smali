.class public Lcyanogenmod/util/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static SOLID_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    .line 28
    return-void

    .line 30
    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x1
        -0x777778
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRGBtoLAB(I)[F
    .locals 22
    .param p0, "rgb"    # I

    .prologue
    .line 43
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v13, v0, [F

    .line 53
    .local v13, "lab":[F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v14, v18, v19

    .line 54
    .local v14, "r":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v12, v18, v19

    .line 55
    .local v12, "g":F
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x437f0000    # 255.0f

    div-float v7, v18, v19

    .line 58
    .local v7, "b":F
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    .line 59
    const/high16 v18, 0x41400000    # 12.0f

    div-float v14, v14, v18

    .line 63
    :goto_0
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_1

    .line 64
    const/high16 v18, 0x41400000    # 12.0f

    div-float v12, v12, v18

    .line 68
    :goto_1
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 69
    const/high16 v18, 0x41400000    # 12.0f

    div-float v7, v7, v18

    .line 73
    :goto_2
    const v18, 0x3edf4236

    mul-float v18, v18, v14

    const v19, 0x3ec5296a

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3e128582

    mul-float v19, v19, v7

    add-float v3, v18, v19

    .line 74
    .local v3, "X":F
    const v18, 0x3e63d4d6

    mul-float v18, v18, v14

    const v19, 0x3f3785d8

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3d784e3c

    mul-float v19, v19, v7

    add-float v4, v18, v19

    .line 75
    .local v4, "Y":F
    const v18, 0x3c6436f9

    mul-float v18, v18, v14

    const v19, 0x3dc6dacb

    mul-float v19, v19, v12

    add-float v18, v18, v19

    const v19, 0x3f36d4dc

    mul-float v19, v19, v7

    add-float v5, v18, v19

    .line 48
    .local v5, "Z":F
    const v18, 0x3f76d730    # 0.964221f

    .line 78
    div-float v15, v3, v18

    .line 49
    .local v15, "xr":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 79
    div-float v16, v4, v18

    .line 50
    .local v16, "yr":F
    const v18, 0x3f534107

    .line 80
    div-float v17, v5, v18

    .line 45
    .local v17, "zr":F
    const v18, 0x3c111aa7

    .line 82
    cmpl-float v18, v15, v18

    if-lez v18, :cond_3

    .line 83
    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 45
    .local v9, "fx":F
    :goto_3
    const v18, 0x3c111aa7

    .line 87
    cmpl-float v18, v16, v18

    if-lez v18, :cond_4

    .line 88
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 45
    .local v10, "fy":F
    :goto_4
    const v18, 0x3c111aa7

    .line 92
    cmpl-float v18, v17, v18

    if-lez v18, :cond_5

    .line 93
    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 97
    .local v11, "fz":F
    :goto_5
    const/high16 v18, 0x42e80000    # 116.0f

    mul-float v18, v18, v10

    const/high16 v19, 0x41800000    # 16.0f

    sub-float v2, v18, v19

    .line 98
    .local v2, "Ls":F
    sub-float v18, v9, v10

    const/high16 v19, 0x43fa0000    # 500.0f

    mul-float v6, v19, v18

    .line 99
    .local v6, "as":F
    sub-float v18, v10, v11

    const/high16 v19, 0x43480000    # 200.0f

    mul-float v8, v19, v18

    .line 101
    .local v8, "bs":F
    const v18, 0x40233333    # 2.55f

    mul-float v18, v18, v2

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    const/16 v19, 0x0

    aput v18, v13, v19

    .line 102
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v6

    const/16 v19, 0x1

    aput v18, v13, v19

    .line 103
    const/high16 v18, 0x3f000000    # 0.5f

    add-float v18, v18, v8

    const/16 v19, 0x2

    aput v18, v13, v19

    .line 105
    return-object v13

    .line 61
    .end local v2    # "Ls":F
    .end local v3    # "X":F
    .end local v4    # "Y":F
    .end local v5    # "Z":F
    .end local v6    # "as":F
    .end local v8    # "bs":F
    .end local v9    # "fx":F
    .end local v10    # "fy":F
    .end local v11    # "fz":F
    .end local v15    # "xr":F
    .end local v16    # "yr":F
    .end local v17    # "zr":F
    :cond_0
    float-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    goto/16 :goto_0

    .line 66
    :cond_1
    float-to-double v0, v12

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v12, v0

    goto/16 :goto_1

    .line 71
    :cond_2
    float-to-double v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0x3fac28f5c28f5c29L    # 0.055

    add-double v18, v18, v20

    const-wide v20, 0x3ff0e147ae147ae1L    # 1.055

    div-double v18, v18, v20

    const-wide v20, 0x4003333333333333L    # 2.4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v7, v0

    goto/16 :goto_2

    .line 46
    .restart local v3    # "X":F
    .restart local v4    # "Y":F
    .restart local v5    # "Z":F
    .restart local v15    # "xr":F
    .restart local v16    # "yr":F
    .restart local v17    # "zr":F
    :cond_3
    const v18, 0x4461d2f7

    .line 85
    mul-float v18, v18, v15

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .restart local v9    # "fx":F
    goto/16 :goto_3

    .line 46
    :cond_4
    const v18, 0x4461d2f7

    .line 90
    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .restart local v10    # "fy":F
    goto/16 :goto_4

    .line 46
    :cond_5
    const v18, 0x4461d2f7

    .line 95
    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4030000000000000L    # 16.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x405d000000000000L    # 116.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .restart local v11    # "fz":F
    goto/16 :goto_5
.end method

.method public static findPerceptuallyNearestColor(I[I)I
    .locals 18
    .param p0, "rgb"    # I
    .param p1, "colors"    # [I

    .prologue
    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "nearest":I
    const-wide v4, 0x4087e80000000000L    # 765.0

    .line 121
    .local v4, "distance":D
    if-gtz p0, :cond_0

    .line 122
    const/4 v9, 0x0

    return v9

    .line 125
    :cond_0
    invoke-static/range {p0 .. p0}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v7

    .line 127
    .local v7, "original":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v9, v0

    if-ge v3, v9, :cond_2

    .line 128
    aget v2, p1, v3

    .line 129
    .local v2, "color":I
    invoke-static {v2}, Lcyanogenmod/util/ColorUtils;->convertRGBtoLAB(I)[F

    move-result-object v8

    .line 131
    .local v8, "target":[F
    const/4 v9, 0x0

    aget v9, v7, v9

    const/4 v12, 0x0

    aget v12, v8, v12

    sub-float/2addr v9, v12

    float-to-double v12, v9

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 132
    const/4 v9, 0x1

    aget v9, v7, v9

    const/4 v14, 0x1

    aget v14, v8, v14

    sub-float/2addr v9, v14

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 131
    add-double/2addr v12, v14

    .line 133
    const/4 v9, 0x2

    aget v9, v7, v9

    const/4 v14, 0x2

    aget v14, v8, v14

    sub-float/2addr v9, v14

    float-to-double v14, v9

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    .line 131
    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 134
    .local v10, "total":D
    cmpg-double v9, v10, v4

    if-gez v9, :cond_1

    .line 135
    move v6, v2

    .line 136
    move-wide v4, v10

    .line 127
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    .end local v2    # "color":I
    .end local v8    # "target":[F
    .end local v10    # "total":D
    :cond_2
    return v6
.end method

.method public static findPerceptuallyNearestSolidColor(I)I
    .locals 1
    .param p0, "rgb"    # I

    .prologue
    .line 152
    sget-object v0, Lcyanogenmod/util/ColorUtils;->SOLID_COLORS:[I

    invoke-static {p0, v0}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestColor(I[I)I

    move-result v0

    return v0
.end method

.method public static generateAlertColorFromDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "color":I
    const/4 v0, 0x0

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez p0, :cond_0

    .line 169
    return v6

    .line 172
    :cond_0
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_2

    .line 173
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-static {v0}, Lcom/android/internal/util/cm/palette/Palette;->generate(Landroid/graphics/Bitmap;)Lcom/android/internal/util/cm/palette/Palette;

    move-result-object v2

    .line 182
    .local v2, "p":Lcom/android/internal/util/cm/palette/Palette;
    invoke-virtual {v2, v6}, Lcom/android/internal/util/cm/palette/Palette;->getVibrantColor(I)I

    move-result v3

    invoke-static {v3}, Lcyanogenmod/util/ColorUtils;->findPerceptuallyNearestSolidColor(I)I

    move-result v3

    const v4, 0xffffff

    and-int v1, v3, v4

    .line 183
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    .end local v2    # "p":Lcom/android/internal/util/cm/palette/Palette;
    :cond_1
    return v1

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 176
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 177
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method
