.class Landroid/service/voice/VoiceInteractionSession$Request$1;
.super Lcom/android/internal/app/IVoiceInteractorRequest$Stub;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/voice/VoiceInteractionSession$Request;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .prologue
    .line 288
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$1:Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractorRequest$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$1:Landroid/service/voice/VoiceInteractionSession$Request;

    iget-object v1, v1, Landroid/service/voice/VoiceInteractionSession$Request;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession;

    .line 292
    .local v0, "session":Landroid/service/voice/VoiceInteractionSession;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 294
    iget-object v2, v0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$Request$1;->this$1:Landroid/service/voice/VoiceInteractionSession$Request;

    const/4 v4, 0x7

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 293
    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 290
    :cond_0
    return-void
.end method
