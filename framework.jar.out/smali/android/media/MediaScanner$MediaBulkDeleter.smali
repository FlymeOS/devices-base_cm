.class Landroid/media/MediaScanner$MediaBulkDeleter;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaBulkDeleter"
.end annotation


# instance fields
.field final mBaseUri:Landroid/net/Uri;

.field final mPackageName:Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field whereArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field whereClause:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/IContentProvider;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/IContentProvider;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    .line 1303
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    .line 1309
    iput-object p1, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    .line 1310
    iput-object p2, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    .line 1311
    iput-object p3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    .line 1312
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v0, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1321
    invoke-virtual {p0}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1323
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1326
    .local v2, "size":I
    if-lez v2, :cond_0

    .line 1327
    new-array v0, v2, [Ljava/lang/String;

    .line 1328
    .local v0, "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "foo":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 1329
    .restart local v0    # "foo":[Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mProvider:Landroid/content/IContentProvider;

    iget-object v4, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mPackageName:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->mBaseUri:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v0}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1333
    .local v1, "numrows":I
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereClause:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1334
    iget-object v3, p0, Landroid/media/MediaScanner$MediaBulkDeleter;->whereArgs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1336
    .end local v0    # "foo":[Ljava/lang/String;
    .end local v1    # "numrows":I
    :cond_0
    return-void
.end method
