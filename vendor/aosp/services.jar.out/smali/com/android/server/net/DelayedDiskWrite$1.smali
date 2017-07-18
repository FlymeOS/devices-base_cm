.class Lcom/android/server/net/DelayedDiskWrite$1;
.super Ljava/lang/Object;
.source "DelayedDiskWrite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/DelayedDiskWrite;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$open:Z

.field final synthetic val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;


# direct methods
.method constructor <init>(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/DelayedDiskWrite;
    .param p2, "val$filePath"    # Ljava/lang/String;
    .param p3, "val$w"    # Lcom/android/server/net/DelayedDiskWrite$Writer;
    .param p4, "val$open"    # Z

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/net/DelayedDiskWrite$1;->this$0:Lcom/android/server/net/DelayedDiskWrite;

    iput-object p2, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;

    iput-boolean p4, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$open:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/server/net/DelayedDiskWrite$1;->this$0:Lcom/android/server/net/DelayedDiskWrite;

    iget-object v1, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$w:Lcom/android/server/net/DelayedDiskWrite$Writer;

    iget-boolean v3, p0, Lcom/android/server/net/DelayedDiskWrite$1;->val$open:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->-wrap0(Lcom/android/server/net/DelayedDiskWrite;Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    .line 60
    return-void
.end method
