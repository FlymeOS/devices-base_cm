.class public Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;
.super Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;
.source "PictureAdjustmentController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LiveDisplay-PAC"


# instance fields
.field private final mHardware:Lcyanogenmod/hardware/CMHardwareManager;

.field private final mHasDisplayModes:Z

.field private mRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUsePictureAdjustment:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/cyanogenmod/platform/internal/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcyanogenmod/hardware/CMHardwareManager;->getInstance(Landroid/content/Context;)Lcyanogenmod/hardware/CMHardwareManager;

    move-result-object v3

    iput-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    .line 51
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    .line 53
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    const/high16 v4, 0x40000

    invoke-virtual {v3, v4}, Lcyanogenmod/hardware/CMHardwareManager;->isSupported(I)Z

    move-result v2

    .line 54
    .local v2, "usePA":Z
    if-eqz v2, :cond_0

    .line 55
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    iget-object v4, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v4}, Lcyanogenmod/hardware/CMHardwareManager;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 57
    const/4 v2, 0x0

    .line 67
    .end local v2    # "usePA":Z
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 68
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 70
    :cond_1
    iput-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    .line 48
    return-void

    .line 59
    .restart local v2    # "usePA":Z
    :cond_2
    iget-object v3, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "range$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 60
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v5

    if-nez v3, :cond_3

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "usePA":Z
    goto :goto_0
.end method

.method private getPAForMode(I)Lcyanogenmod/hardware/HSIC;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 200
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 201
    .local v0, "prefs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcyanogenmod/hardware/HSIC;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 202
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcyanogenmod/hardware/HSIC;

    return-object v1

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    return-object v1
.end method

.method private packPreference(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcyanogenmod/hardware/HSIC;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "modes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcyanogenmod/hardware/HSIC;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 232
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 233
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcyanogenmod/hardware/HSIC;

    .line 234
    .local v2, "m":Lcyanogenmod/hardware/HSIC;
    if-lez v0, :cond_0

    .line 235
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcyanogenmod/hardware/HSIC;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "id":I
    .end local v2    # "m":Lcyanogenmod/hardware/HSIC;
    :cond_1
    const-string/jumbo v4, "display_picture_adjustment"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method private setPAForMode(ILcyanogenmod/hardware/HSIC;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    .line 208
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->unpackPreference()Landroid/util/SparseArray;

    move-result-object v0

    .line 209
    .local v0, "prefs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcyanogenmod/hardware/HSIC;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    invoke-direct {p0, v0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->packPreference(Landroid/util/SparseArray;)V

    .line 207
    return-void
.end method

.method private unpackPreference()Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcyanogenmod/hardware/HSIC;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 214
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 216
    .local v4, "ret":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcyanogenmod/hardware/HSIC;>;"
    const-string/jumbo v5, "display_picture_adjustment"

    invoke-virtual {p0, v5}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "pref":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 218
    const-string/jumbo v5, ","

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "byMode":[Ljava/lang/String;
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v0, v5

    .line 220
    .local v1, "mode":Ljava/lang/String;
    const-string/jumbo v8, ":"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "modePA":[Ljava/lang/String;
    array-length v8, v2

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 222
    aget-object v8, v2, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Lcyanogenmod/hardware/HSIC;->unflattenFrom(Ljava/lang/String;)Lcyanogenmod/hardware/HSIC;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "byMode":[Ljava/lang/String;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "modePA":[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private updatePictureAdjustment()V
    .locals 4

    .prologue
    .line 94
    iget-boolean v1, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    .line 96
    .local v0, "hsic":Lcyanogenmod/hardware/HSIC;
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v1, v0}, Lcyanogenmod/hardware/CMHardwareManager;->setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    const-string/jumbo v1, "LiveDisplay-PAC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to set picture adjustment! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcyanogenmod/hardware/HSIC;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v0    # "hsic":Lcyanogenmod/hardware/HSIC;
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 106
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 108
    const-string/jumbo v0, "PictureAdjustmentController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  adjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  hueRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getHueRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  saturationRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  intensityRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  contrastRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  saturationThresholdRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  defaultAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .locals 1
    .param p1, "caps"    # Ljava/util/BitSet;

    .prologue
    .line 122
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    .line 123
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 125
    :cond_0
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    return v0
.end method

.method getContrastRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 144
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 145
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "hsic":Lcyanogenmod/hardware/HSIC;
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getDefaultPictureAdjustment()Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    .line 158
    .end local v0    # "hsic":Lcyanogenmod/hardware/HSIC;
    :cond_0
    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    .line 161
    :cond_1
    return-object v0
.end method

.method getHueRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 129
    :goto_0
    return-object v0

    .line 130
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getIntensityRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 139
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 140
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 139
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getPictureAdjustment()Lcyanogenmod/hardware/HSIC;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "hsic":Lcyanogenmod/hardware/HSIC;
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_1

    .line 167
    const/4 v7, 0x0

    .line 168
    .local v7, "modeID":I
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v6

    .line 170
    .local v6, "mode":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v6, :cond_0

    .line 171
    iget v7, v6, Lcyanogenmod/hardware/DisplayMode;->id:I

    .line 174
    .end local v6    # "mode":Lcyanogenmod/hardware/DisplayMode;
    :cond_0
    invoke-direct {p0, v7}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->getPAForMode(I)Lcyanogenmod/hardware/HSIC;

    move-result-object v0

    .line 176
    .end local v0    # "hsic":Lcyanogenmod/hardware/HSIC;
    .end local v7    # "modeID":I
    :cond_1
    if-nez v0, :cond_2

    .line 177
    new-instance v0, Lcyanogenmod/hardware/HSIC;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcyanogenmod/hardware/HSIC;-><init>(FFFFF)V

    .line 179
    :cond_2
    return-object v0
.end method

.method getSaturationRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 135
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 134
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method getSaturationThresholdRange()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 149
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mRanges:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 149
    :goto_0
    return-object v0

    .line 150
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSettingsChanged(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    .line 80
    const-string/jumbo v1, "display_picture_adjustment"

    invoke-static {v1}, Lcyanogenmod/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-virtual {p0, v0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->registerSettings([Landroid/net/Uri;)V

    .line 74
    return-void
.end method

.method protected onUpdate()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->updatePictureAdjustment()V

    .line 89
    return-void
.end method

.method setPictureAdjustment(Lcyanogenmod/hardware/HSIC;)Z
    .locals 3
    .param p1, "hsic"    # Lcyanogenmod/hardware/HSIC;

    .prologue
    .line 183
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mUsePictureAdjustment:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "modeID":I
    iget-boolean v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHasDisplayModes:Z

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->mHardware:Lcyanogenmod/hardware/CMHardwareManager;

    invoke-virtual {v2}, Lcyanogenmod/hardware/CMHardwareManager;->getCurrentDisplayMode()Lcyanogenmod/hardware/DisplayMode;

    move-result-object v0

    .line 187
    .local v0, "mode":Lcyanogenmod/hardware/DisplayMode;
    if-eqz v0, :cond_0

    .line 188
    iget v1, v0, Lcyanogenmod/hardware/DisplayMode;->id:I

    .line 191
    .end local v0    # "mode":Lcyanogenmod/hardware/DisplayMode;
    :cond_0
    invoke-direct {p0, v1, p1}, Lorg/cyanogenmod/platform/internal/display/PictureAdjustmentController;->setPAForMode(ILcyanogenmod/hardware/HSIC;)V

    .line 192
    const/4 v2, 0x1

    return v2

    .line 194
    .end local v1    # "modeID":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method
