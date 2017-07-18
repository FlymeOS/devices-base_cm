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
    .line 471
    iput-object p1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-direct {p0}, Lcyanogenmod/hardware/ICMHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 474
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
    .line 486
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 487
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
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

    .line 490
    const/4 v0, 0x0

    return v0

    .line 492
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->get(I)Z

    move-result v0

    return v0
.end method

.method public getColorBalance()I
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 807
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalance()I

    move-result v0

    return v0

    .line 811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 797
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 796
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMax()I

    move-result v0

    return v0

    .line 801
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 3

    .prologue
    .line 786
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 787
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 786
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMin()I

    move-result v0

    return v0

    .line 791
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 688
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 689
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 688
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 691
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-object v2

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 699
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 700
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-object v2

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 836
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 837
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 836
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 841
    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 509
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 508
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-object v2

    .line 514
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

    .line 545
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 546
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return-object v2

    .line 551
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 666
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v4

    .line 667
    const-string/jumbo v5, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 666
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const/16 v4, 0x2000

    invoke-direct {p0, v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 669
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Display modes are not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-object v6

    .line 672
    :cond_0
    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v4

    invoke-interface {v4}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayModes()[Lcyanogenmod/hardware/DisplayMode;

    move-result-object v1

    .line 673
    .local v1, "modes":[Lcyanogenmod/hardware/DisplayMode;
    if-nez v1, :cond_1

    .line 674
    return-object v6

    .line 676
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v3, "remapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcyanogenmod/hardware/DisplayMode;>;"
    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 678
    .local v0, "mode":Lcyanogenmod/hardware/DisplayMode;
    iget-object v6, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v6, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-wrap0(Lorg/cyanogenmod/platform/internal/CMHardwareService;Lcyanogenmod/hardware/DisplayMode;)Lcyanogenmod/hardware/DisplayMode;

    move-result-object v2

    .line 679
    .local v2, "r":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v2, :cond_2

    .line 680
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 683
    .end local v0    # "mode":Lcyanogenmod/hardware/DisplayMode;
    .end local v2    # "r":Lcyanogenmod/hardware/DisplayMode;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcyanogenmod/hardware/DisplayMode;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcyanogenmod/hardware/DisplayMode;

    return-object v4
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 601
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v2

    .line 606
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
    .line 611
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 612
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 611
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-wide/16 v0, 0x0

    return-wide v0

    .line 617
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

    .line 589
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 590
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-object v2

    .line 595
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
    .line 534
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 535
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 534
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getNumGammaControls()I

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 826
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 827
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 826
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 831
    :cond_0
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getPictureAdjustmentRanges()[F
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 856
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    .line 857
    const-string/jumbo v2, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v3, 0x0

    .line 856
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 859
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    .line 860
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    const/16 v1, 0xa

    new-array v2, v1, [F

    .line 861
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v5

    .line 862
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v6

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v7

    .line 863
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v2, v8

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x5

    aput v1, v2, v3

    .line 864
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x6

    aput v1, v2, v3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x7

    aput v1, v2, v3

    .line 865
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x8

    aput v1, v2, v3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/16 v3, 0x9

    aput v1, v2, v3

    .line 860
    return-object v2

    .line 867
    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Float;>;>;"
    :cond_0
    const/16 v1, 0xa

    new-array v1, v1, [F

    return-object v1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 622
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 623
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 622
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Serial number is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-object v2

    .line 628
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
    .line 479
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 479
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
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
    .line 756
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 757
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 756
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get3(Lorg/cyanogenmod/platform/internal/CMHardwareService;)I

    move-result v0

    return v0

    .line 761
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 634
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 633
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unique device ID is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-object v2

    .line 639
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 568
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 567
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-object v2

    .line 573
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
    .line 655
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 656
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 741
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 742
    const-string/jumbo v1, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    .line 741
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 744
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-object v3

    .line 743
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 747
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 748
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-object v3

    .line 751
    :cond_2
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
    .line 766
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 767
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 766
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 771
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 645
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x0

    return v0

    .line 650
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
    .line 497
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 498
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 497
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
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

    .line 501
    const/4 v0, 0x0

    return v0

    .line 503
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->set(IZ)Z

    move-result v0

    return v0
.end method

.method public setColorBalance(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 816
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 817
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 816
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setColorBalance(I)Z

    move-result v0

    return v0

    .line 821
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v3, 0x0

    .line 519
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 520
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return v3

    .line 525
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 526
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid color calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return v3

    .line 529
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
    .line 556
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 557
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 556
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v0, 0x0

    return v0

    .line 562
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
    .line 710
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 711
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 710
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v0, 0x0

    return v0

    .line 716
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayMode(Lcyanogenmod/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    const/4 v2, 0x0

    .line 846
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 847
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 846
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 849
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v0

    return v0

    .line 851
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 579
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    return v0

    .line 584
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
    .line 776
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 777
    const-string/jumbo v1, "cyanogenmod.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 776
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get4(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 721
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get2(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    .line 722
    const-string/jumbo v2, "cyanogenmod.permission.MANAGE_PERSISTENT_STORAGE"

    .line 721
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 724
    :cond_0
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    return v4

    .line 723
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    .line 728
    if-eqz p2, :cond_4

    array-length v1, p2

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_4

    .line 729
    :cond_2
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    return v4

    .line 732
    :cond_4
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 733
    invoke-static {}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v4

    .line 736
    :cond_5
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/CMHardwareService$1;->this$0:Lorg/cyanogenmod/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/cyanogenmod/platform/internal/CMHardwareService;->-get1(Lorg/cyanogenmod/platform/internal/CMHardwareService;)Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/cyanogenmod/platform/internal/CMHardwareService$CMHardwareInterface;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
