.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .locals 3
    .param p2, "stackId"    # I

    .prologue
    const/4 v0, 0x0

    .line 3744
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    .line 3729
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 3731
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 3734
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 3742
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 3745
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3746
    :try_start_0
    iput p2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    .line 3747
    new-instance v0, Lcom/android/server/am/ActivityStack;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivtyContainer{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    .line 3750
    monitor-exit v1

    .line 3751
    return-void

    .line 3750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 3866
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v3

    const/4 v5, 0x2

    const-string v6, "ActivityContainer"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 3869
    .local v6, "userId":I
    if-nez p2, :cond_0

    .line 3870
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p2

    .line 3871
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3873
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p2

    .line 3876
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 3877
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_1

    iget v0, v8, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 3878
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3881
    :cond_1
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3902
    return-object p0
.end method

.method public attachToDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    .line 3766
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 3767
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3768
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    .line 3769
    monitor-exit v2

    .line 3773
    :goto_0
    return-void

    .line 3771
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 3772
    monitor-exit v2

    goto :goto_0

    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .locals 3
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 3756
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3757
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 3758
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 3760
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    .line 3761
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->attachStack(II)V

    .line 3762
    return-void
.end method

.method public final checkEmbeddedAllowed(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3886
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3887
    return-void
.end method

.method public final checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    .line 3892
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v1, :cond_0

    .line 3893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad PendingIntent object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 3895
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 3896
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3898
    return-void
.end method

.method protected detachLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3827
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 3828
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 3829
    iput-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 3830
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 3831
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 3832
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 3834
    :cond_0
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "outBounds"    # Landroid/graphics/Point;

    .prologue
    .line 3919
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3920
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 3921
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V

    .line 3925
    :goto_0
    monitor-exit v1

    .line 3926
    return-void

    .line 3923
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 3925
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDisplayId()I
    .locals 2

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 3778
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    .line 3779
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    monitor-exit v1

    .line 3782
    :goto_0
    return v0

    .line 3781
    :cond_0
    monitor-exit v1

    .line 3782
    const/4 v0, -0x1

    goto :goto_0

    .line 3781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v2, 0x0

    .line 3787
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3789
    .local v0, "origId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3790
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_0

    .line 3791
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return v2

    .line 3795
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3795
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3798
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method isAttachedLocked()Z
    .locals 1

    .prologue
    .line 3915
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEligibleForNewTasks()Z
    .locals 1

    .prologue
    .line 3944
    const/4 v0, 0x1

    return v0
.end method

.method onTaskListEmptyLocked()V
    .locals 0

    .prologue
    .line 3948
    return-void
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v5, 0x2

    .line 3804
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3805
    :try_start_0
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    if-ne v1, v5, :cond_0

    .line 3806
    monitor-exit v4

    .line 3822
    :goto_0
    return-void

    .line 3808
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mContainerState:I

    .line 3810
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v5, 0x70

    invoke-virtual {v1, v5, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3812
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 3816
    .local v2, "origId":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 3817
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3819
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3821
    monitor-exit v4

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "origId":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3819
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v2    # "origId":J
    :catchall_1
    move-exception v1

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method setDrawn()V
    .locals 0

    .prologue
    .line 3940
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 3907
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityContainer.attachToSurface"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3908
    return-void
.end method

.method setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3930
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 3931
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mVisible:Z

    .line 3932
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    if-eqz v0, :cond_0

    .line 3933
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x6c

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3937
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3933
    goto :goto_0
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3838
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "ActivityContainer.startActivity"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3839
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v4}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "ActivityContainer"

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 3843
    .local v17, "userId":I
    const/high16 v1, 0x18010000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3844
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 3845
    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3847
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v6

    .line 3849
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p1

    move-object/from16 v18, p0

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .locals 13
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    const/high16 v9, 0x18010000

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3855
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityContainer.startActivityIntentSender"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3857
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 3858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad PendingIntent object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 3861
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v8, v1

    move v10, v9

    move-object v11, v2

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mIdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_0

    const-string v0, "N"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "A"

    goto :goto_0
.end method
