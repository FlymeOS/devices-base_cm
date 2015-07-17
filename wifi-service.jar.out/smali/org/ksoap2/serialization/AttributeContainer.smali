.class public Lorg/ksoap2/serialization/AttributeContainer;
.super Ljava/lang/Object;
.source "AttributeContainer.java"


# instance fields
.field private attributes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    return-void
.end method

.method private attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 113
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 117
    :goto_1
    return-object v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 163
    new-instance v0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 164
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    .line 165
    if-nez p2, :cond_0

    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    .line 166
    iput-object p2, v0, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    .line 167
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/AttributeContainer;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    .line 168
    return-void

    .line 165
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V
    .locals 1
    .param p1, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    .prologue
    .line 189
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public addAttributeIfValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/AttributeContainer;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_0
    return-void
.end method

.method public addAttributeIfValue(Lorg/ksoap2/serialization/AttributeInfo;)V
    .locals 1
    .param p1, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    .prologue
    .line 197
    iget-object v0, p1, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z
    .locals 7
    .param p1, "other"    # Lorg/ksoap2/serialization/AttributeContainer;

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    move-result v1

    .line 137
    .local v1, "numAttributes":I
    invoke-virtual {p1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    move-result v6

    if-eq v1, v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v5

    .line 141
    :cond_1
    const/4 v0, 0x0

    .local v0, "attribIndex":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 142
    iget-object v6, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ksoap2/serialization/AttributeInfo;

    .line 143
    .local v3, "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 144
    .local v4, "thisAttribValue":Ljava/lang/Object;
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/ksoap2/serialization/AttributeContainer;->hasAttribute(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    invoke-virtual {v3}, Lorg/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/ksoap2/serialization/AttributeContainer;->getAttributeSafely(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, "otherAttribValue":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v2    # "otherAttribValue":Ljava/lang/Object;
    .end local v3    # "thisAttrib":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v4    # "thisAttribValue":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public getAttribute(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 47
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    .line 37
    .local v0, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "attributeInfo"    # Lorg/ksoap2/serialization/AttributeInfo;

    .prologue
    .line 16
    iget-object v1, p0, Lorg/ksoap2/serialization/AttributeContainer;->attributes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/AttributeInfo;

    .line 17
    .local v0, "p":Lorg/ksoap2/serialization/AttributeInfo;
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->name:Ljava/lang/String;

    .line 18
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->namespace:Ljava/lang/String;

    .line 19
    iget v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    iput v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->flags:I

    .line 20
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->type:Ljava/lang/Object;

    .line 21
    iget-object v1, v0, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 22
    invoke-virtual {v0}, Lorg/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lorg/ksoap2/serialization/AttributeInfo;->value:Ljava/lang/Object;

    .line 23
    return-void
.end method

.method public getAttributeSafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 87
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributeSafelyAsString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 104
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/AttributeContainer;->getAttribute(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/AttributeContainer;->attributeIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
