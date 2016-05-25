.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 320
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_1

    .line 321
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->access$302(Landroid/preference/SeekBarVolumizer;I)I

    .line 323
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2

    .line 324
    .local v0, "muted":Z
    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # setter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->access$402(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 326
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->access$400(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(Z)V

    .line 330
    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 333
    .end local v0    # "muted":Z
    :cond_1
    return-void

    .line 323
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postUpdateSlider(IZ)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "mute"    # Z

    .prologue
    const/4 v1, 0x1

    .line 336
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, p1, v0}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 337
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
