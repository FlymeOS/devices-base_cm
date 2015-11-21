.class public Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/am/ActivityRecord;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public result:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p2, "_activity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_userHandle"    # I

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 466
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    .line 467
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 468
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 469
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 470
    iput p6, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->userHandle:I

    .line 471
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 474
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    monitor-enter p0

    .line 476
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$PendingAssistExtras;->haveResult:Z

    .line 477
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 478
    monitor-exit p0

    .line 479
    return-void

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
