.class Lcom/android/server/display/DisplayAdapter$2;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayAdapter;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter$2;->this$0:Lcom/android/server/display/DisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter$2;->this$0:Lcom/android/server/display/DisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/DisplayAdapter;->-get0(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/DisplayAdapter$Listener;->onTraversalRequested()V

    .line 133
    return-void
.end method
