.class final Landroid/content/res/flymetheme/ConfigurationExt$1;
.super Ljava/lang/Object;
.source "ConfigurationExt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/ConfigurationExt;
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
        "Landroid/content/res/flymetheme/ConfigurationExt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/res/flymetheme/ConfigurationExt;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 35
    new-instance v0, Landroid/content/res/flymetheme/ConfigurationExt;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/content/res/flymetheme/ConfigurationExt;-><init>(Landroid/os/Parcel;Landroid/content/res/flymetheme/ConfigurationExt;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/res/flymetheme/ConfigurationExt$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/res/flymetheme/ConfigurationExt;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/res/flymetheme/ConfigurationExt;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Landroid/content/res/flymetheme/ConfigurationExt;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/res/flymetheme/ConfigurationExt$1;->newArray(I)[Landroid/content/res/flymetheme/ConfigurationExt;

    move-result-object v0

    return-object v0
.end method
