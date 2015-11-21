.class Lcom/android/server/am/ActivityManagerService$10;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$anrPid:I

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 10661
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$10;->val$anrPid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$10;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$10;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$10;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$10;->val$aboveSystem:Z

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$10;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 10664
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$10;->val$anrPid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$10;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v1, :cond_0

    .line 10665
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring stale ANR (occurred in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$10;->val$anrPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but current pid is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$10;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10670
    :goto_0
    return-void

    .line 10669
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$10;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$10;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$10;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$10;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$10;->val$aboveSystem:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$10;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    goto :goto_0
.end method
