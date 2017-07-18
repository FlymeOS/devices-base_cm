.class Landroid/sax/Children;
.super Ljava/lang/Object;
.source "Children.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/Children$Child;
    }
.end annotation


# instance fields
.field children:[Landroid/sax/Children$Child;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/sax/Children$Child;

    iput-object v0, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    .line 23
    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 67
    .local v1, "hash":I
    and-int/lit8 v2, v1, 0xf

    .line 69
    .local v2, "index":I
    iget-object v3, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v0, v3, v2

    .line 70
    .local v0, "current":Landroid/sax/Children$Child;
    if-nez v0, :cond_1

    .line 71
    return-object v5

    .line 79
    :cond_0
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 80
    if-eqz v0, :cond_2

    .line 74
    :cond_1
    iget v3, v0, Landroid/sax/Children$Child;->hash:I

    if-ne v3, v1, :cond_0

    .line 75
    iget-object v3, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 76
    iget-object v3, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 77
    return-object v0

    .line 82
    :cond_2
    return-object v5
.end method

.method getOrCreate(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;
    .locals 8
    .param p1, "parent"    # Landroid/sax/Element;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v5, v1, v2

    .line 32
    .local v5, "hash":I
    and-int/lit8 v6, v5, 0xf

    .line 34
    .local v6, "index":I
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aget-object v0, v1, v6

    .line 35
    .local v0, "current":Landroid/sax/Children$Child;
    if-nez v0, :cond_1

    .line 37
    new-instance v0, Landroid/sax/Children$Child;

    .end local v0    # "current":Landroid/sax/Children$Child;
    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v4, v1, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 38
    .restart local v0    # "current":Landroid/sax/Children$Child;
    iget-object v1, p0, Landroid/sax/Children;->children:[Landroid/sax/Children$Child;

    aput-object v0, v1, v6

    .line 39
    return-object v0

    .line 51
    :cond_0
    move-object v7, v0

    .line 52
    .local v7, "previous":Landroid/sax/Children$Child;
    iget-object v0, v0, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 53
    if-eqz v0, :cond_2

    .line 44
    .end local v7    # "previous":Landroid/sax/Children$Child;
    :cond_1
    iget v1, v0, Landroid/sax/Children$Child;->hash:I

    if-ne v1, v5, :cond_0

    .line 45
    iget-object v1, v0, Landroid/sax/Children$Child;->uri:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 46
    iget-object v1, v0, Landroid/sax/Children$Child;->localName:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 48
    return-object v0

    .line 56
    .restart local v7    # "previous":Landroid/sax/Children$Child;
    :cond_2
    new-instance v0, Landroid/sax/Children$Child;

    .end local v0    # "current":Landroid/sax/Children$Child;
    iget v1, p1, Landroid/sax/Element;->depth:I

    add-int/lit8 v4, v1, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/sax/Children$Child;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;II)V

    .line 57
    .restart local v0    # "current":Landroid/sax/Children$Child;
    iput-object v0, v7, Landroid/sax/Children$Child;->next:Landroid/sax/Children$Child;

    .line 58
    return-object v0
.end method
