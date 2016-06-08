.class final Lcom/android/server/GestureManagerService$BinderDeath;
.super Ljava/lang/Object;
.source "GestureManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderDeath"
.end annotation


# instance fields
.field private mListener:Lcom/android/server/GestureManagerService$GestureListener;

.field private mTag:Ljava/lang/String;

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureManagerService;Ljava/lang/String;ILcom/android/server/GestureManagerService$GestureListener;)V
    .locals 0
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "listener"    # Lcom/android/server/GestureManagerService$GestureListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/server/GestureManagerService$BinderDeath;->this$0:Lcom/android/server/GestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput-object p2, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mTag:Ljava/lang/String;

    .line 319
    iput p3, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mUid:I

    .line 320
    iput-object p4, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mListener:Lcom/android/server/GestureManagerService$GestureListener;

    .line 321
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    const-string v0, "GestureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Death received from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/android/server/GestureManagerService$BinderDeath;->this$0:Lcom/android/server/GestureManagerService;

    iget-object v0, v0, Lcom/android/server/GestureManagerService;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/GestureManagerService$BinderDeath;->mListener:Lcom/android/server/GestureManagerService$GestureListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 327
    monitor-exit p0

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
