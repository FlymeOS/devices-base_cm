.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableReprocessFormatsMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerReprocessFormatsMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<",
        "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 0
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/ReprocessFormatsMap;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/ReprocessFormatsMap;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap;

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I
    .locals 8
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;

    .prologue
    .line 104
    const/4 v5, 0x0

    .line 106
    .local v5, "length":I
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    move-result-object v3

    .line 107
    .local v3, "inputs":[I
    move-object v0, v3

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 109
    .local v2, "input":I
    add-int/lit8 v5, v5, 0x1

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 112
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v6

    .line 113
    .local v6, "outputs":[I
    array-length v7, v6

    add-int/2addr v5, v7

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "input":I
    .end local v6    # "outputs":[I
    :cond_0
    mul-int/lit8 v7, v5, 0x4

    return v7
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 37
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->calculateMarshalSize(Landroid/hardware/camera2/params/ReprocessFormatsMap;)I

    move-result v0

    return v0
.end method

.method public getNativeSize()I
    .locals 1

    .prologue
    .line 90
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V
    .locals 11
    .param p1, "value"    # Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getInputs()[I

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    move-result-object v5

    .line 55
    .local v5, "inputs":[I
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v6    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 57
    .local v4, "input":I
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/params/ReprocessFormatsMap;->getOutputs(I)[I

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/camera2/params/StreamConfigurationMap;->imageFormatToInternal([I)[I

    move-result-object v9

    .line 62
    .local v9, "outputs":[I
    array-length v10, v9

    invoke-virtual {p2, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    move-object v1, v9

    .local v1, "arr$":[I
    array-length v7, v1

    .local v7, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v7, :cond_0

    aget v8, v1, v2

    .line 66
    .local v8, "output":I
    invoke-virtual {p2, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 55
    .end local v8    # "output":I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 69
    .end local v1    # "arr$":[I
    .end local v4    # "input":I
    .end local v7    # "len$":I
    .end local v9    # "outputs":[I
    :cond_1
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->marshal(Landroid/hardware/camera2/params/ReprocessFormatsMap;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    div-int/lit8 v2, v3, 0x4

    .line 74
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    rem-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "ReprocessFormatsMap was not TYPE_INT32"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 78
    :cond_0
    new-array v0, v2, [I

    .line 80
    .local v0, "entries":[I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 81
    .local v1, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 85
    new-instance v3, Landroid/hardware/camera2/params/ReprocessFormatsMap;

    invoke-direct {v3, v0}, Landroid/hardware/camera2/params/ReprocessFormatsMap;-><init>([I)V

    return-object v3
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableReprocessFormatsMap$MarshalerReprocessFormatsMap;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/hardware/camera2/params/ReprocessFormatsMap;

    move-result-object v0

    return-object v0
.end method
