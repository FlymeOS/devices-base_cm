.class public Landroid/provider/SearchIndexableResource;
.super Landroid/provider/SearchIndexableData;
.source "SearchIndexableResource.java"


# instance fields
.field public xmlResId:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 0
    .param p1, "rank"    # I
    .param p2, "xmlResId"    # I
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "iconResId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/provider/SearchIndexableData;-><init>()V

    .line 52
    iput p1, p0, Landroid/provider/SearchIndexableResource;->rank:I

    .line 53
    iput p2, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 54
    iput-object p3, p0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 55
    iput p4, p0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableData;-><init>(Landroid/content/Context;)V

    .line 65
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SearchIndexableResource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-super {p0}, Landroid/provider/SearchIndexableData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string/jumbo v1, "xmlResId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
