.class Landroid/media/SoundPool$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/SoundPool;

    .prologue
    .line 168
    iput-object p1, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    invoke-static {v0}, Landroid/media/SoundPool;->-get1(Landroid/media/SoundPool;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 171
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 172
    :try_start_0
    iget-object v0, p0, Landroid/media/SoundPool$1;->this$0:Landroid/media/SoundPool;

    invoke-static {v0}, Landroid/media/SoundPool;->-wrap0(Landroid/media/SoundPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 169
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
