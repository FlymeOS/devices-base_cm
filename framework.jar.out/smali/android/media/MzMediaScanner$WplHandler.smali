.class Landroid/media/MzMediaScanner$WplHandler;
.super Ljava/lang/Object;
.source "MzMediaScanner.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MzMediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WplHandler"
.end annotation


# instance fields
.field final handler:Lorg/xml/sax/ContentHandler;

.field playListDirectory:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/MzMediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MzMediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 5
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 2418
    iput-object p1, p0, Landroid/media/MzMediaScanner$WplHandler;->this$0:Landroid/media/MzMediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2419
    iput-object p2, p0, Landroid/media/MzMediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    .line 2421
    new-instance v2, Landroid/sax/RootElement;

    const-string v4, "smil"

    invoke-direct {v2, v4}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 2422
    .local v2, "root":Landroid/sax/RootElement;
    const-string v4, "body"

    invoke-virtual {v2, v4}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 2423
    .local v0, "body":Landroid/sax/Element;
    const-string v4, "seq"

    invoke-virtual {v0, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 2424
    .local v3, "seq":Landroid/sax/Element;
    const-string v4, "media"

    invoke-virtual {v3, v4}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 2425
    .local v1, "media":Landroid/sax/Element;
    invoke-virtual {v1, p0}, Landroid/sax/Element;->setElementListener(Landroid/sax/ElementListener;)V

    .line 2427
    invoke-virtual {v2}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MzMediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    .line 2428
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 2440
    return-void
.end method

.method getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 2443
    iget-object v0, p0, Landroid/media/MzMediaScanner$WplHandler;->handler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 2432
    const-string v1, ""

    const-string v2, "src"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2433
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2434
    iget-object v1, p0, Landroid/media/MzMediaScanner$WplHandler;->this$0:Landroid/media/MzMediaScanner;

    iget-object v2, p0, Landroid/media/MzMediaScanner$WplHandler;->playListDirectory:Ljava/lang/String;

    # invokes: Landroid/media/MzMediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Landroid/media/MzMediaScanner;->access$4800(Landroid/media/MzMediaScanner;Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    :cond_0
    return-void
.end method
