.class Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;
.super Ljava/lang/Object;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCMHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method public constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 2
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 102
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 104
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 106
    :cond_1
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 108
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 110
    :cond_3
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 112
    :cond_4
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 114
    :cond_5
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 116
    :cond_6
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 118
    :cond_7
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 119
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 120
    :cond_8
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 122
    :cond_9
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 123
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 124
    :cond_a
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 125
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 126
    :cond_b
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 127
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 128
    :cond_c
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 129
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 130
    :cond_d
    invoke-static {}, Lorg/cyanogenmod/hardware/PersistentStorage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 131
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 132
    :cond_e
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 101
    :cond_f
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 191
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 192
    :cond_0
    return-object v5

    .line 194
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "strArray":[Ljava/lang/String;
    :try_start_0
    array-length v4, v3

    new-array v2, v4, [I

    .line 197
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 198
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_2
    return-object v2

    .line 201
    .end local v1    # "i":I
    .end local v2    # "intArray":[I
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v5
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 141
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    return v0

    .line 143
    :sswitch_0
    invoke-static {}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    return v0

    .line 145
    :sswitch_1
    invoke-static {}, Lorg/cyanogenmod/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 147
    :sswitch_2
    invoke-static {}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    return v0

    .line 149
    :sswitch_3
    invoke-static {}, Lorg/cyanogenmod/hardware/KeyDisabler;->isActive()Z

    move-result v0

    return v0

    .line 151
    :sswitch_4
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 153
    :sswitch_5
    invoke-static {}, Lorg/cyanogenmod/hardware/TapToWake;->isEnabled()Z

    move-result v0

    return v0

    .line 155
    :sswitch_6
    invoke-static {}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    return v0

    .line 157
    :sswitch_7
    invoke-static {}, Lorg/cyanogenmod/hardware/AutoContrast;->isEnabled()Z

    move-result v0

    return v0

    .line 159
    :sswitch_8
    invoke-static {}, Lorg/cyanogenmod/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    return v0

    .line 141
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
        0x8000 -> :sswitch_8
    .end sparse-switch
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getCurrentMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getDefaultMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 219
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 220
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v8

    .line 223
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 224
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 225
    aget v2, v1, v5

    aput v2, v0, v5

    .line 226
    aget v2, v1, v6

    aput v2, v0, v6

    .line 228
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    .line 227
    aput v2, v0, v7

    .line 230
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v2

    .line 229
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 232
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v2

    .line 231
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 233
    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 9
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 246
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 247
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-object v8

    .line 250
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 251
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 252
    aget v2, v1, v5

    aput v2, v0, v5

    .line 253
    aget v2, v1, v6

    aput v2, v0, v6

    .line 255
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    .line 254
    aput v2, v0, v7

    .line 257
    invoke-static {p1}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v2

    .line 256
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 258
    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 305
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayModeControl;->getAvailableModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 284
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 285
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    invoke-static {}, Lorg/cyanogenmod/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    invoke-static {}, Lorg/cyanogenmod/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    .line 266
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 267
    .local v0, "vibrator":[I
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getCurIntensity()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 268
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 269
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMinIntensity()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 270
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getMaxIntensity()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 271
    invoke-static {}, Lorg/cyanogenmod/hardware/VibratorHW;->getWarningThreshold()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 272
    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 1

    .prologue
    .line 301
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    invoke-static {p1}, Lorg/cyanogenmod/hardware/PersistentStorage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 167
    sparse-switch p1, :sswitch_data_0

    .line 185
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v0, 0x0

    return v0

    .line 169
    :sswitch_0
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 171
    :sswitch_1
    invoke-static {p2}, Lorg/cyanogenmod/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 173
    :sswitch_2
    invoke-static {p2}, Lorg/cyanogenmod/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 175
    :sswitch_3
    invoke-static {p2}, Lorg/cyanogenmod/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    return v0

    .line 177
    :sswitch_4
    invoke-static {p2}, Lorg/cyanogenmod/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 179
    :sswitch_5
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TapToWake;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 181
    :sswitch_6
    invoke-static {p2}, Lorg/cyanogenmod/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 183
    :sswitch_7
    invoke-static {p2}, Lorg/cyanogenmod/hardware/AutoContrast;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
    .end sparse-switch
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 1
    .param p1, "rgb"    # [I

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cyanogenmod/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 262
    invoke-direct {p0, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/cyanogenmod/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 1
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 317
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/DisplayModeControl;->setMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 276
    invoke-static {p1}, Lorg/cyanogenmod/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 321
    invoke-static {p1, p2}, Lorg/cyanogenmod/hardware/PersistentStorage;->set(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
