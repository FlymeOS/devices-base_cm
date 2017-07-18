.class Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;
.super Ljava/lang/Object;
.source "StrictMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

.field final synthetic val$records:Ljava/util/ArrayList;

.field final synthetic val$windowManager:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Landroid/os/StrictMode$AndroidBlockGuardPolicy;Landroid/view/IWindowManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    .param p2, "val$windowManager"    # Landroid/view/IWindowManager;

    .prologue
    .line 1360
    .local p3, "val$records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    iput-object p1, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    iput-object p2, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    iput-object p3, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1368
    .local v0, "loopFinishTime":J
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    if-eqz v5, :cond_0

    .line 1370
    :try_start_0
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$windowManager:Landroid/view/IWindowManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->showStrictModeViolation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 1376
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    .line 1377
    .local v4, "v":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v5, v2, 0x1

    iput v5, v4, Landroid/os/StrictMode$ViolationInfo;->violationNumThisLoop:I

    .line 1379
    iget-wide v6, v4, Landroid/os/StrictMode$ViolationInfo;->violationUptimeMillis:J

    sub-long v6, v0, v6

    long-to-int v5, v6

    .line 1378
    iput v5, v4, Landroid/os/StrictMode$ViolationInfo;->durationMillis:I

    .line 1380
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->this$1:Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v5, v4}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolation(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1375
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1382
    .end local v4    # "v":Landroid/os/StrictMode$ViolationInfo;
    :cond_1
    iget-object v5, p0, Landroid/os/StrictMode$AndroidBlockGuardPolicy$1;->val$records:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1361
    return-void

    .line 1371
    .end local v2    # "n":I
    :catch_0
    move-exception v3

    .local v3, "unused":Landroid/os/RemoteException;
    goto :goto_0
.end method
