.class final Landroid/view/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GraphicBuffer;
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
        "Landroid/view/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, 0x0

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 273
    .local v4, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    .local v5, "usage":I
    # invokes: Landroid/view/GraphicBuffer;->nReadGraphicBufferFromParcel(Landroid/os/Parcel;)J
    invoke-static {p1}, Landroid/view/GraphicBuffer;->access$000(Landroid/os/Parcel;)J

    move-result-wide v6

    .line 275
    .local v6, "nativeObject":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Landroid/view/GraphicBuffer;

    invoke-direct/range {v1 .. v8}, Landroid/view/GraphicBuffer;-><init>(IIIIJLandroid/view/GraphicBuffer$1;)V

    .line 278
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v8

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/GraphicBuffer;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 282
    new-array v0, p1, [Landroid/view/GraphicBuffer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->newArray(I)[Landroid/view/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method
