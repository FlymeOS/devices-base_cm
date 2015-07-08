.class Landroid/content/res/Configuration$FlymeInject;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlymeInject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "that"    # Landroid/content/res/Configuration;

    .prologue
    .line 1890
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    iget v1, p1, Landroid/content/res/Configuration;->themeChanged:I

    sub-int/2addr v0, v1

    return v0
.end method

.method static diff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 1868
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v0, v1, :cond_0

    .line 1869
    or-int/lit16 p2, p2, 0x4000

    .line 1873
    :cond_0
    return p2
.end method

.method static hashCode(Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "result"    # I

    .prologue
    .line 1896
    mul-int/lit8 v0, p1, 0x1f

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    add-int p1, v0, v1

    .line 1897
    return p1
.end method

.method static readFromParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 1886
    return-void
.end method

.method static setTo(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "o"    # Landroid/content/res/Configuration;

    .prologue
    .line 1837
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 1839
    return-void
.end method

.method static setToDefaults(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1851
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 1853
    return-void
.end method

.method static toString(Landroid/content/res/Configuration;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1843
    const-string v0, " themeChanged."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1844
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1846
    return-object p1
.end method

.method static updateFrom(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 2
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "delta"    # Landroid/content/res/Configuration;
    .param p2, "changed"    # I

    .prologue
    .line 1857
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iget v1, p0, Landroid/content/res/Configuration;->themeChanged:I

    if-eq v0, v1, :cond_0

    .line 1858
    or-int/lit16 p2, p2, 0x4000

    .line 1859
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    iput v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    .line 1863
    :cond_0
    return p2
.end method

.method static writeToParcel(Landroid/content/res/Configuration;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 1878
    iget v0, p0, Landroid/content/res/Configuration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1880
    return-void
.end method
