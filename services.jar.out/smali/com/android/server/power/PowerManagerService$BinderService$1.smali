.class Lcom/android/server/power/PowerManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;

.field final synthetic val$eventTime:J

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/power/PowerManagerService$BinderService;
    .param p2, "val$eventTime"    # J
    .param p4, "val$reason"    # Ljava/lang/String;
    .param p5, "val$uid"    # I
    .param p6, "val$opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3525
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$eventTime:J

    iput-object p4, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$reason:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$uid:I

    iput-object p6, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3530
    .local v8, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$eventTime:J

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$reason:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$uid:I

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$opPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/power/PowerManagerService$BinderService$1;->val$uid:I

    invoke-static/range {v1 .. v7}, Lcom/android/server/power/PowerManagerService;->-wrap45(Lcom/android/server/power/PowerManagerService;JLjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3532
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3527
    return-void

    .line 3531
    :catchall_0
    move-exception v0

    .line 3532
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3531
    throw v0
.end method
