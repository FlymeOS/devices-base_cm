.class Landroid/media/MediaCodec$BufferMap;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferMap$CodecBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/MediaCodec$1;

    .prologue
    .line 1193
    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 1252
    iget-object v2, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .line 1253
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    goto :goto_0

    .line 1255
    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1256
    return-void
.end method

.method public put(ILandroid/media/Image;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "newImage"    # Landroid/media/Image;

    .prologue
    .line 1243
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .line 1244
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-nez v0, :cond_0

    .line 1245
    new-instance v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>(Landroid/media/MediaCodec$1;)V

    .line 1246
    .restart local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->setImage(Landroid/media/Image;)V

    .line 1249
    return-void
.end method

.method public put(ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "newBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1234
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .line 1235
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-nez v0, :cond_0

    .line 1236
    new-instance v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>(Landroid/media/MediaCodec$1;)V

    .line 1237
    .restart local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 1240
    return-void
.end method

.method public remove(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1226
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    .line 1227
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-eqz v0, :cond_0

    .line 1228
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 1229
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :cond_0
    return-void
.end method
