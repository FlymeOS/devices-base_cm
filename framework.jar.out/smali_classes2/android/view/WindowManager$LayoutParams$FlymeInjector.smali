.class final Landroid/view/WindowManager$LayoutParams$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static copyFrom(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)I
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "changes"    # I

    .prologue
    .line 2225
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    if-eq v0, v1, :cond_0

    .line 2226
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2227
    const/high16 v0, 0x800000

    or-int/2addr p2, v0

    .line 2230
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    if-eq v0, v1, :cond_1

    .line 2231
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2232
    const/high16 v0, 0x1000000

    or-int/2addr p2, v0

    .line 2236
    :cond_1
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_2

    .line 2237
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2241
    :cond_2
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p2, v1}, Landroid/view/MeizuLayoutParams;->copyFrom(ILandroid/view/MeizuLayoutParams;)I

    move-result v0

    or-int/2addr p2, v0

    .line 2244
    return p2
.end method

.method static initFlymeExtraFields(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2190
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2191
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2189
    return-void
.end method

.method static readFromParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    .line 2200
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2201
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2205
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->readInParcel(Landroid/os/Parcel;)V

    .line 2194
    return-void
.end method

.method static toString(Landroid/view/WindowManager$LayoutParams;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2248
    const-string/jumbo v0, " meizuFlags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2250
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2251
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2255
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->toString(Ljava/lang/StringBuilder;)V

    .line 2247
    return-void
.end method

.method static writeToParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 2210
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->statusBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2215
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2216
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2220
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->writeToParcel(Landroid/os/Parcel;)V

    .line 2209
    return-void
.end method
