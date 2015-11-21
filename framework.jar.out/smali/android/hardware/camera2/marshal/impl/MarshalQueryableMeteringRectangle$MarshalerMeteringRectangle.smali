.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle$MarshalerMeteringRectangle;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableMeteringRectangle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerMeteringRectangle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/MeteringRectangle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/MeteringRectangle;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle$MarshalerMeteringRectangle;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getNativeSize()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x14

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/MeteringRectangle;Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "value"    # Landroid/hardware/camera2/params/MeteringRectangle;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getX()I

    move-result v2

    .line 44
    .local v2, "xMin":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getY()I

    move-result v4

    .line 45
    .local v4, "yMin":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getWidth()I

    move-result v5

    add-int v1, v2, v5

    .line 46
    .local v1, "xMax":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getHeight()I

    move-result v5

    add-int v3, v4, v5

    .line 47
    .local v3, "yMax":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/MeteringRectangle;->getMeteringWeight()I

    move-result v0

    .line 49
    .local v0, "weight":I
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 54
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle$MarshalerMeteringRectangle;->marshal(Landroid/hardware/camera2/params/MeteringRectangle;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 59
    .local v1, "xMin":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 60
    .local v2, "yMin":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 61
    .local v6, "xMax":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 62
    .local v7, "yMax":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 64
    .local v5, "weight":I
    sub-int v3, v6, v1

    .line 65
    .local v3, "width":I
    sub-int v4, v7, v2

    .line 67
    .local v4, "height":I
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    return-object v0
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableMeteringRectangle$MarshalerMeteringRectangle;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    return-object v0
.end method
