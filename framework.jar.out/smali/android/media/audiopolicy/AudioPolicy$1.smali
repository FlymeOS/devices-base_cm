.class Landroid/media/audiopolicy/AudioPolicy$1;
.super Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;
.source "AudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiopolicy/AudioPolicy;


# direct methods
.method constructor <init>(Landroid/media/audiopolicy/AudioPolicy;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    invoke-direct {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    .locals 2
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 421
    iget-object v0, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v1, 0x1

    # invokes: Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p1, p2}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 426
    return-void
.end method

.method public notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    .locals 3
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasNotified"    # Z

    .prologue
    .line 429
    iget-object v1, p0, Landroid/media/audiopolicy/AudioPolicy$1;->this$0:Landroid/media/audiopolicy/AudioPolicy;

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Landroid/media/audiopolicy/AudioPolicy;->sendMsg(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/media/audiopolicy/AudioPolicy;->access$100(Landroid/media/audiopolicy/AudioPolicy;ILjava/lang/Object;I)V

    .line 434
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
