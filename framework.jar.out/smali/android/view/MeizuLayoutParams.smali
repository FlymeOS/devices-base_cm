.class public Landroid/view/MeizuLayoutParams;
.super Ljava/lang/Object;
.source "MeizuLayoutParams.java"


# static fields
.field public static final MEIZU_FLAG_INTERCEPT_HOME_KEY:I = 0x20

.field public static final MEIZU_FLAG_SHOW_HOLSTER_MODE:I = 0x200

.field public static final TYPE_GESTURE_PANEL:I = 0x7f9

.field public static final TYPE_HOLSTER_WINDOW:I = 0x7f2

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
    .line 41
    iget v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    iget v1, p2, Landroid/view/MeizuLayoutParams;->flags:I

    if-eq v0, v1, :cond_0

    .line 42
    iget v0, p2, Landroid/view/MeizuLayoutParams;->flags:I

    iput v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    .line 43
    or-int/lit8 p1, p1, 0x10

    .line 45
    :cond_0
    return p1
.end method

.method public readInParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    .line 39
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 49
    const-string v0, "Meizu WM.LayoutParams [ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "flags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MeizuLayoutParams;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 35
    iget v0, p0, Landroid/view/MeizuLayoutParams;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
