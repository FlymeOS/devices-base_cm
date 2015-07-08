.class Landroid/view/WindowManager$LayoutParams$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManager$LayoutParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustMeizuFlags(I)I
    .locals 2
    .param p0, "meizuFlags"    # I

    .prologue
    .line 2185
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2186
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getMzInputThemeLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2188
    or-int/lit16 p0, p0, 0x800

    .line 2194
    :cond_0
    :goto_0
    return p0

    .line 2190
    :cond_1
    and-int/lit16 p0, p0, -0x801

    goto :goto_0
.end method

.method static copyFrom(Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManager$LayoutParams;I)I
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "o"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "changes"    # I

    .prologue
    .line 2226
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    if-eq v0, v1, :cond_0

    .line 2227
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2228
    const/high16 v0, 0x400000

    or-int/2addr p2, v0

    .line 2231
    :cond_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    if-eq v0, v1, :cond_1

    .line 2232
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 2233
    const/high16 v0, 0x800000

    or-int/2addr p2, v0

    .line 2236
    :cond_1
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    if-eq v0, v1, :cond_2

    .line 2237
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    .line 2238
    const/high16 v0, 0x1000000

    or-int/2addr p2, v0

    .line 2241
    :cond_2
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_3

    .line 2242
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2246
    :cond_3
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p2, v1}, Landroid/view/MeizuLayoutParams;->copyFrom(ILandroid/view/MeizuLayoutParams;)I

    move-result v0

    or-int/2addr p2, v0

    .line 2249
    return p2
.end method

.method static initParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2177
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2178
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 2179
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    .line 2180
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2181
    return-void
.end method

.method static readFromParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 2199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    .line 2200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    .line 2202
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2203
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2207
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->readInParcel(Landroid/os/Parcel;)V

    .line 2209
    return-void
.end method

.method static toString(Landroid/view/WindowManager$LayoutParams;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2253
    const-string v0, " meizuFlags=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2254
    const-string v0, " imeOffset="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2255
    const-string v0, " splitActionBarHeight="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2257
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2258
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2262
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->toString(Ljava/lang/StringBuilder;)V

    .line 2264
    return-void
.end method

.method static writeToParcel(Landroid/view/WindowManager$LayoutParams;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 2212
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams$FlymeInjector;->adjustMeizuFlags(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2213
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->imeOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2214
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->splitActionBarHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2216
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    if-nez v0, :cond_0

    .line 2217
    new-instance v0, Landroid/view/MeizuLayoutParams;

    invoke-direct {v0}, Landroid/view/MeizuLayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    .line 2221
    :cond_0
    iget-object v0, p0, Landroid/view/WindowManager$LayoutParams;->meizuParams:Landroid/view/MeizuLayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/MeizuLayoutParams;->writeToParcel(Landroid/os/Parcel;)V

    .line 2223
    return-void
.end method
