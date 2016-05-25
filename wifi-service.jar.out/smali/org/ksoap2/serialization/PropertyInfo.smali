.class public Lorg/ksoap2/serialization/PropertyInfo;
.super Ljava/lang/Object;
.source "PropertyInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOOLEAN_CLASS:Ljava/lang/Class;

.field public static final INTEGER_CLASS:Ljava/lang/Class;

.field public static final LONG_CLASS:Ljava/lang/Class;

.field public static final MULTI_REF:I = 0x2

.field public static final OBJECT_CLASS:Ljava/lang/Class;

.field public static final OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

.field public static final REF_ONLY:I = 0x4

.field public static final STRING_CLASS:Ljava/lang/Class;

.field public static final TRANSIENT:I = 0x1

.field public static final VECTOR_CLASS:Ljava/lang/Class;


# instance fields
.field public elementType:Lorg/ksoap2/serialization/PropertyInfo;

.field public flags:I

.field public multiRef:Z

.field public name:Ljava/lang/String;

.field public namespace:Ljava/lang/String;

.field public type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    .line 39
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    .line 40
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->INTEGER_CLASS:Ljava/lang/Class;

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->LONG_CLASS:Ljava/lang/Class;

    .line 42
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->BOOLEAN_CLASS:Ljava/lang/Class;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    .line 44
    new-instance v0, Lorg/ksoap2/serialization/PropertyInfo;

    invoke-direct {v0}, Lorg/ksoap2/serialization/PropertyInfo;-><init>()V

    sput-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lorg/ksoap2/serialization/PropertyInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 86
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    sget-object v0, Lorg/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    iput-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    .line 92
    iput-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 242
    const/4 v5, 0x0

    .line 246
    .local v5, "obj":Ljava/lang/Object;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 247
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 248
    .local v6, "out":Ljava/io/ObjectOutputStream;
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 250
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V

    .line 254
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v3, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 267
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-object v5

    .line 257
    .restart local v5    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 259
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 262
    .local v4, "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v4}, Ljava/io/NotSerializableException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v4    # "nse":Ljava/io/NotSerializableException;
    :catch_2
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getElementType()Lorg/ksoap2/serialization/PropertyInfo;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isMultiRef()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    return v0
.end method

.method public setElementType(Lorg/ksoap2/serialization/PropertyInfo;)V
    .locals 0
    .param p1, "elementType"    # Lorg/ksoap2/serialization/PropertyInfo;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->elementType:Lorg/ksoap2/serialization/PropertyInfo;

    .line 111
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 127
    iput p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->flags:I

    .line 128
    return-void
.end method

.method public setMultiRef(Z)V
    .locals 0
    .param p1, "multiRef"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->multiRef:Z

    .line 145
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/Object;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lorg/ksoap2/serialization/PropertyInfo;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 233
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 231
    :cond_0
    const-string v1, "(not set)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
