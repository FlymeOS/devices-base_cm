.class public Landroid/view/MeizuLayoutParams;
.super Ljava/lang/Object;
.source "MeizuLayoutParams.java"


# static fields
.field public static final MEIZU_FLAG_AOD_Display:I = 0x400

.field public static final MEIZU_FLAG_INTERCEPT_HOME_KEY:I = 0x20

.field public static final MEIZU_FLAG_SHOW_HOLSTER_MODE:I = 0x200

.field public static final MEIZU_FLAG_SHOW_NORMAL_TOAST:I = 0x40

.field public static final TYPE_AOD_DISPLAY:I = 0x7fd

.field public static final TYPE_GESTURE_PANEL:I = 0x7f9

.field public static final TYPE_HOLSTER_WINDOW:I = 0x7fc

.field public static final TYPE_KEEP_SURFACE_CROP:I = 0x7fb

.field public static final TYPE_MMS_POP_WINDOW:I = 0x7fa


# instance fields
.field public flags:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(ILandroid/view/MeizuLayoutParams;)I
    .locals 2
    .param p1, "changes"    # I
    .param p2, "o"    # Landroid/view/MeizuLayoutParams;

    .prologue
    .line 50
    iget v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    iget v1, p2, Landroid/view/MeizuLayoutParams;->flags:I

    if-eq v0, v1, :cond_0

    .line 51
    iget v0, p2, Landroid/view/MeizuLayoutParams;->flags:I

    iput v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    .line 52
    or-int/lit8 p1, p1, 0x10

    .line 54
    :cond_0
    return p1
.end method

.method public readInParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    .line 46
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 58
    const-string/jumbo v0, "Meizu WM.LayoutParams [ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v0, "flags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MeizuLayoutParams;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 44
    iget v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
