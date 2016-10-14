.class Lorg/cyanogenmod/platform/internal/CMHardwareService$1;
.super Lcyanogenmod/hardware/ICMHardwareService$Stub;
.source "CMHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;


# direct methods
.method constructor <init>(Lorg/cyanogenmod/platform/internal/CMHardwareService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cyanogenmod/platform/internal/CMHardwareService;

    .prologue
    .line 364
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 367
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 380
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->get(I)Z

    move-result v0

    return v0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 559
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 560
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 559
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-object v2

    .line 565
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 571
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 570
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 573
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-object v2

    .line 576
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 402
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-object v2

    .line 407
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 439
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 438
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-object v2

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 549
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 548
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-object v2

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 494
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-object v2

    .line 499
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDownloadInterval()J
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 505
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 504
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-wide/16 v0, 0x0

    return-wide v0

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 483
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 482
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-object v2

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 428
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x0

    return v0

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getNumGammaControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 516
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 515
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Serial number is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-object v2

    .line 521
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 373
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 372
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getThermalState()I
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 615
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 614
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I

    move-result v0

    return v0

    .line 619
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 461
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-object v2

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 538
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v0, 0x0

    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 604
    const-string/jumbo v1, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v2

    .line 609
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public registerThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    .line 624
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 625
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 624
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 629
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 527
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v0, 0x0

    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->set(IZ)Z

    move-result v0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v3, 0x0

    .line 412
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 413
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v3

    .line 418
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 419
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid color calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v3

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 449
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 450
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 449
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x0

    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z
    .locals 3
    .param p1, "mode"    # Lcyanogenmod/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 581
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 582
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 581
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v0, 0x0

    return v0

    .line 587
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 472
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 471
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    return v0
.end method

.method public unRegisterThermalListener(Lcyanogenmod/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lcyanogenmod/hardware/IThermalListenerCallback;

    .prologue
    .line 634
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 635
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 639
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 592
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 593
    const-string/jumbo v1, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    const/4 v2, 0x0

    .line 592
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x0

    return v0

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
