.class Landroid/app/ActivityView$SerialExecutor$1;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityView$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ActivityView$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/ActivityView$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/ActivityView$SerialExecutor;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/app/ActivityView$SerialExecutor$1;->this$1:Landroid/app/ActivityView$SerialExecutor;

    iput-object p2, p0, Landroid/app/ActivityView$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityView$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    iget-object v0, p0, Landroid/app/ActivityView$SerialExecutor$1;->this$1:Landroid/app/ActivityView$SerialExecutor;

    invoke-virtual {v0}, Landroid/app/ActivityView$SerialExecutor;->scheduleNext()V

    .line 94
    return-void

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    iget-object v1, p0, Landroid/app/ActivityView$SerialExecutor$1;->this$1:Landroid/app/ActivityView$SerialExecutor;

    invoke-virtual {v1}, Landroid/app/ActivityView$SerialExecutor;->scheduleNext()V

    .line 97
    throw v0
.end method
