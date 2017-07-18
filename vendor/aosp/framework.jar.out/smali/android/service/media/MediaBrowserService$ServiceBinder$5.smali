.class Landroid/service/media/MediaBrowserService$ServiceBinder$5;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$mediaId:Ljava/lang/String;

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/media/MediaBrowserService$ServiceBinder;
    .param p2, "val$mediaId"    # Ljava/lang/String;
    .param p3, "val$receiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 280
    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v0, v0, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$mediaId:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$5;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v1, v2}, Landroid/service/media/MediaBrowserService;->-wrap3(Landroid/service/media/MediaBrowserService;Ljava/lang/String;Landroid/os/ResultReceiver;)V

    .line 282
    return-void
.end method
