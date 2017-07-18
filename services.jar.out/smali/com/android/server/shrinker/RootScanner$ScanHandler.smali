.class Lcom/android/server/shrinker/RootScanner$ScanHandler;
.super Landroid/os/Handler;
.source "RootScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/shrinker/RootScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/shrinker/RootScanner;


# direct methods
.method public constructor <init>(Lcom/android/server/shrinker/RootScanner;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/shrinker/RootScanner;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/server/shrinker/RootScanner$ScanHandler;->this$0:Lcom/android/server/shrinker/RootScanner;

    .line 131
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 130
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/shrinker/RootScanner$ScanHandler;->this$0:Lcom/android/server/shrinker/RootScanner;

    invoke-virtual {v0}, Lcom/android/server/shrinker/RootScanner;->scan()V

    .line 134
    return-void
.end method
