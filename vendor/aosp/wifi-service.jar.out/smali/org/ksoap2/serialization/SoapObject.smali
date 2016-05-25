.class public Lorg/ksoap2/serialization/SoapObject;
.super Lorg/ksoap2/serialization/AttributeContainer;
.source "SoapObject.java"

# interfaces
.implements Lorg/ksoap2/serialization/KvmSerializable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Ljava/lang/String;

.field protected properties:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/ksoap2/serialization/AttributeContainer;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    .line 79
    iput-object p1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 390
    if-eqz p1, :cond_1

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 392
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 397
    .end local v0    # "i":I
    :goto_1
    return-object v1

    .line 391
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 511
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 512
    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    iput-object p1, v0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 513
    if-nez p2, :cond_0

    sget-object v1, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    :goto_0
    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 515
    iput-object p2, v0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iput-object v1, v0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 518
    invoke-virtual {p0, v0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object v1

    return-object v1

    .line 513
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method public addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 560
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 561
    return-object p0
.end method

.method public addPropertyIfValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 529
    if-eqz p2, :cond_0

    .line 530
    invoke-virtual {p0, p1, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object p0

    .line 532
    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 571
    iget-object v0, p1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 575
    :cond_0
    return-object p0
.end method

.method public addPropertyIfValue(Lorg/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;
    .locals 0
    .param p1, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 544
    if-eqz p2, :cond_0

    .line 545
    invoke-virtual {p1, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    move-result-object p0

    .line 548
    .end local p0    # "this":Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    return-object p0
.end method

.method public addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;
    .locals 1
    .param p1, "soapObject"    # Lorg/ksoap2/serialization/SoapObject;

    .prologue
    .line 587
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 588
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 84
    instance-of v5, p1, Lorg/ksoap2/serialization/SoapObject;

    if-nez v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v1, p1

    .line 88
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .line 90
    .local v1, "otherSoapObject":Lorg/ksoap2/serialization/SoapObject;
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    iget-object v6, v1, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v6, v1, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    .line 96
    .local v0, "numProperties":I
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ne v0, v5, :cond_0

    .line 101
    const/4 v2, 0x0

    .local v2, "propIndex":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 102
    iget-object v5, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "thisProp":Ljava/lang/Object;
    invoke-virtual {v1, v3, v2}, Lorg/ksoap2/serialization/SoapObject;->isPropertyEqual(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "thisProp":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->attributesAreEqual(Lorg/ksoap2/serialization/AttributeContainer;)Z

    move-result v4

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitiveProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 304
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 305
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .line 306
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    .line 307
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 313
    :goto_0
    return-object v2

    .line 309
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 310
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 311
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 316
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 329
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 330
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .line 331
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    .line 332
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 337
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPrimitivePropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 351
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 352
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .line 353
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    .line 354
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-object v2

    .line 356
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-direct {v1}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 357
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setType(Ljava/lang/Object;)V

    .line 358
    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 359
    invoke-virtual {v1, p1}, Lorg/ksoap2/serialization/PropertyInfo;->setName(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 363
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    new-instance v2, Lorg/ksoap2/serialization/NullSoapObject;

    invoke-direct {v2}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_0
.end method

.method public getPrimitivePropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 377
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 378
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .line 379
    .local v1, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getType()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/ksoap2/serialization/SoapObject;

    if-eq v2, v3, :cond_0

    .line 380
    invoke-virtual {v1}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 385
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-object v2

    .line 382
    .restart local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 385
    .end local v1    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getProperty(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    .restart local v0    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lorg/ksoap2/serialization/SoapObject;

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 177
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 180
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

.method public getPropertyAsString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .line 166
    .local v0, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 193
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
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

.method public getPropertyCount()I
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getPropertyInfo(ILjava/util/Hashtable;Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "properties"    # Ljava/util/Hashtable;
    .param p3, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 421
    invoke-virtual {p0, p1, p3}, Lorg/ksoap2/serialization/SoapObject;->getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V

    .line 422
    return-void
.end method

.method public getPropertyInfo(ILorg/ksoap2/serialization/PropertyInfo;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "propertyInfo"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 434
    iget-object v2, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 435
    .local v0, "element":Ljava/lang/Object;
    instance-of v2, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 436
    check-cast v1, Lorg/ksoap2/serialization/PropertyInfo;

    .line 437
    .local v1, "p":Lorg/ksoap2/serialization/PropertyInfo;
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 438
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 439
    iget v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    iput v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    .line 440
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 441
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 442
    iget-object v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    iput-object v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 443
    iget-boolean v2, v1, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    iput-boolean v2, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    .line 454
    .end local v1    # "p":Lorg/ksoap2/serialization/PropertyInfo;
    :goto_0
    return-void

    .line 446
    :cond_0
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 447
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 448
    iput v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    .line 449
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 450
    iput-object v3, p2, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 451
    iput-object v0, p2, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 452
    iput-boolean v4, p2, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 219
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/ksoap2/serialization/NullSoapObject;

    invoke-direct {v1}, Lorg/ksoap2/serialization/NullSoapObject;-><init>()V

    goto :goto_0
.end method

.method public getPropertySafely(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 259
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object p2

    .line 262
    .end local p2    # "defaultThing":Ljava/lang/Object;
    :cond_0
    return-object p2
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    .local v1, "i":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "foo":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 238
    const-string v2, ""

    .line 243
    .end local v0    # "foo":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 240
    .restart local v0    # "foo":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 243
    .end local v0    # "foo":Ljava/lang/Object;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getPropertySafelyAsString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultThing"    # Ljava/lang/Object;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 280
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, "property":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .end local v1    # "property":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 285
    .restart local v1    # "property":Ljava/lang/Object;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 288
    .end local v1    # "property":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 291
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/ksoap2/serialization/SoapObject;->propertyIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPropertyEqual(Ljava/lang/Object;I)Z
    .locals 8
    .param p1, "otherProp"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v6

    if-lt p2, v6, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v5

    .line 122
    :cond_1
    iget-object v6, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v6, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "thisProp":Ljava/lang/Object;
    instance-of v6, p1, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    instance-of v6, v2, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 126
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .local v0, "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    move-object v3, v2

    .line 127
    check-cast v3, Lorg/ksoap2/serialization/PropertyInfo;

    .line 128
    .local v3, "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lorg/ksoap2/serialization/PropertyInfo;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "otherPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v3    # "thisPropInfo":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_2
    instance-of v6, p1, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    instance-of v6, v2, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 131
    check-cast v1, Lorg/ksoap2/serialization/SoapObject;

    .local v1, "otherPropSoap":Lorg/ksoap2/serialization/SoapObject;
    move-object v4, v2

    .line 132
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .line 133
    .local v4, "thisPropSoap":Lorg/ksoap2/serialization/SoapObject;
    invoke-virtual {v1, v4}, Lorg/ksoap2/serialization/SoapObject;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public newInstance()Lorg/ksoap2/serialization/SoapObject;
    .locals 10

    .prologue
    .line 464
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v9, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .local v3, "o":Lorg/ksoap2/serialization/SoapObject;
    const/4 v5, 0x0

    .local v5, "propIndex":I
    :goto_0
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 466
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 467
    .local v4, "prop":Ljava/lang/Object;
    instance-of v8, v4, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v8, :cond_1

    .line 468
    iget-object v8, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ksoap2/serialization/PropertyInfo;

    .line 469
    .local v6, "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v6}, Lorg/ksoap2/serialization/PropertyInfo;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ksoap2/serialization/PropertyInfo;

    .line 470
    .local v7, "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    invoke-virtual {v3, v7}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Lorg/ksoap2/serialization/PropertyInfo;)Lorg/ksoap2/serialization/SoapObject;

    .line 465
    .end local v4    # "prop":Ljava/lang/Object;
    .end local v6    # "propertyInfo":Lorg/ksoap2/serialization/PropertyInfo;
    .end local v7    # "propertyInfoClonned":Lorg/ksoap2/serialization/PropertyInfo;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    .restart local v4    # "prop":Ljava/lang/Object;
    :cond_1
    instance-of v8, v4, Lorg/ksoap2/serialization/SoapObject;

    if-eqz v8, :cond_0

    .line 472
    check-cast v4, Lorg/ksoap2/serialization/SoapObject;

    .end local v4    # "prop":Ljava/lang/Object;
    invoke-virtual {v4}, Lorg/ksoap2/serialization/SoapObject;->newInstance()Lorg/ksoap2/serialization/SoapObject;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/ksoap2/serialization/SoapObject;->addSoapObject(Lorg/ksoap2/serialization/SoapObject;)Lorg/ksoap2/serialization/SoapObject;

    goto :goto_1

    .line 475
    :cond_2
    const/4 v0, 0x0

    .local v0, "attribIndex":I
    :goto_2
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getAttributeCount()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 476
    new-instance v2, Lorg/ksoap2/serialization/AttributeInfo;

    invoke-direct {v2}, Lorg/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 477
    .local v2, "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {p0, v0, v2}, Lorg/ksoap2/serialization/SoapObject;->getAttributeInfo(ILorg/ksoap2/serialization/AttributeInfo;)V

    .line 478
    move-object v1, v2

    .line 480
    .local v1, "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v3, v1}, Lorg/ksoap2/serialization/SoapObject;->addAttribute(Lorg/ksoap2/serialization/AttributeInfo;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 482
    .end local v1    # "attributeInfo":Lorg/ksoap2/serialization/AttributeInfo;
    .end local v2    # "newAI":Lorg/ksoap2/serialization/AttributeInfo;
    :cond_3
    return-object v3
.end method

.method public setProperty(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 494
    iget-object v1, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, "prop":Ljava/lang/Object;
    instance-of v1, v0, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v1, :cond_0

    .line 496
    check-cast v0, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v0    # "prop":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lorg/ksoap2/serialization/PropertyInfo;->setValue(Ljava/lang/Object;)V

    .line 499
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 599
    iget-object v3, p0, Lorg/ksoap2/serialization/SoapObject;->properties:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 600
    .local v2, "prop":Ljava/lang/Object;
    instance-of v3, v2, Lorg/ksoap2/serialization/PropertyInfo;

    if-eqz v3, :cond_0

    .line 601
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    check-cast v2, Lorg/ksoap2/serialization/PropertyInfo;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/PropertyInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/SoapObject;->getProperty(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 607
    .restart local v2    # "prop":Ljava/lang/Object;
    :cond_0
    check-cast v2, Lorg/ksoap2/serialization/SoapObject;

    .end local v2    # "prop":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/ksoap2/serialization/SoapObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 610
    :cond_1
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
