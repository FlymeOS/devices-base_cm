.class final Landroid/content/res/ThemeConfig$1;
.super Ljava/lang/Object;
.source "ThemeConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ThemeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/res/ThemeConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ThemeConfig;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/res/ThemeConfig$JsonSerializer;->fromJson(Ljava/lang/String;)Landroid/content/res/ThemeConfig;

    move-result-object v1

    .line 227
    .local v1, "themeConfig":Landroid/content/res/ThemeConfig;
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/ThemeConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 231
    new-array v0, p1, [Landroid/content/res/ThemeConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Landroid/content/res/ThemeConfig$1;->newArray(I)[Landroid/content/res/ThemeConfig;

    move-result-object v0

    return-object v0
.end method
