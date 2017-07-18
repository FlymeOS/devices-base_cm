.class Lcom/android/server/am/ActivityManagerService$11;
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
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$anrPid"    # I
    .param p3, "val$proc"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "val$activity"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "val$parent"    # Lcom/android/server/am/ActivityRecord;
    .param p6, "val$aboveSystem"    # Z
    .param p7, "val$annotation"    # Ljava/lang/String;

    .prologue
    .line 11134
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$11;->val$anrPid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$11;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$11;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$11;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$11;->val$aboveSystem:Z

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$11;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 11137
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$11;->val$anrPid:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$11;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v1, :cond_0

    .line 11138
    const-string/jumbo v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring stale ANR (occurred in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$11;->val$anrPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11139
    const-string/jumbo v2, ", but current pid is "

    .line 11138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11139
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$11;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 11138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11139
    const-string/jumbo v2, ")"

    .line 11138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11140
    return-void

    .line 11142
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$11;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$11;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$11;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$11;->val$aboveSystem:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$11;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 11136
    return-void
.end method
