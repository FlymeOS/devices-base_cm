.class final Landroid/widget/Editor$OptionHandle;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OptionHandle"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 4956
    iput-object p1, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4959
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4973
    :cond_0
    :goto_0
    return-void

    .line 4961
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    .line 4962
    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->show()Z

    goto :goto_0

    .line 4966
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    if-eqz v0, :cond_0

    .line 4967
    iget-object v0, p0, Landroid/widget/Editor$OptionHandle;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mOptionWrapper:Landroid/widget/Editor$OptionWrapper;

    invoke-virtual {v0}, Landroid/widget/Editor$OptionWrapper;->hide()Z

    goto :goto_0

    .line 4959
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
