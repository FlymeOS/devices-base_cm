.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 3114
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3165
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3119
    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    .line 3121
    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    .line 3123
    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    .line 3125
    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    .line 3127
    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    .line 3129
    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 3131
    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    .line 3133
    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 3135
    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 3137
    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 3139
    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 3141
    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    .line 3143
    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 3145
    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 3147
    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 3149
    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 3151
    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    .line 3153
    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 3155
    :pswitch_13
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    .line 3157
    :pswitch_14
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_0

    .line 3159
    :pswitch_15
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    .line 3161
    :pswitch_16
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    goto :goto_0

    .line 3163
    :pswitch_17
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    goto :goto_0

    .line 3117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3170
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 3396
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3172
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3175
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3176
    .local v15, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v3, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v4, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v5, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v6, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v7, v15, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 3177
    invoke-virtual {v15}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3180
    .end local v15    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3181
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3184
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3187
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3191
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3192
    .local v8, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 3202
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3203
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3205
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v9, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .line 3206
    .local v9, "config":Landroid/content/res/Configuration;
    if-eqz v9, :cond_3

    .line 3207
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3210
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3211
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3212
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3213
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3216
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3218
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 3219
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3222
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 3223
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3226
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3230
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3231
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 3232
    .local v21, "w":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 3233
    .local v12, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 3234
    .local v16, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v20, v0

    .line 3235
    .local v20, "t":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v16

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 3236
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v16, v21

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3237
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v20

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 3238
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v4, v20, v12

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3240
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 3241
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3243
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3247
    .end local v12    # "h":I
    .end local v16    # "l":I
    .end local v20    # "t":I
    .end local v21    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_0

    .line 3248
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_c

    const/4 v13, 0x1

    .line 3249
    .local v13, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3251
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v3, v13}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 3253
    if-eqz v13, :cond_7

    .line 3254
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_d

    const/4 v14, 0x1

    .line 3255
    .local v14, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v3, v14}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)Z

    .line 3257
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3258
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3260
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v17, v0

    .line 3261
    .local v17, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v17, :cond_e

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 3262
    .local v19, "surfaceInsets":Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3280
    .end local v14    # "inTouchMode":Z
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v19    # "surfaceInsets":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3283
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3284
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_9

    .line 3285
    if-eqz v13, :cond_8

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3287
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3289
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v3}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3290
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v13}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3291
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3, v13}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3296
    :cond_9
    if-eqz v13, :cond_b

    .line 3297
    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v3}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 3298
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v6, :cond_10

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3304
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3306
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0x101

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3309
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3312
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3313
    if-eqz v13, :cond_0

    .line 3314
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 3248
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "hasWindowFocus":Z
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 3254
    .restart local v13    # "hasWindowFocus":Z
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 3261
    .restart local v14    # "inTouchMode":Z
    .restart local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 3264
    .end local v17    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v10

    .line 3265
    .local v10, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "ViewRootImpl"

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3267
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 3268
    const-string v3, "ViewRootImpl"

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3274
    :cond_f
    :goto_6
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3298
    .end local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v14    # "inTouchMode":Z
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 3321
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v13    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3324
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    .line 3325
    .restart local v8    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v11, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/InputEvent;

    .line 3326
    .local v11, "event":Landroid/view/InputEvent;
    iget-object v0, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/InputEventReceiver;

    .line 3327
    .local v18, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v3, v11, v0, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 3328
    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 3331
    .end local v8    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "event":Landroid/view/InputEvent;
    .end local v18    # "receiver":Landroid/view/InputEventReceiver;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/InputEvent;

    .line 3332
    .restart local v11    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3338
    .end local v11    # "event":Landroid/view/InputEvent;
    :pswitch_d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    .line 3339
    .local v11, "event":Landroid/view/KeyEvent;
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_11

    .line 3343
    invoke-virtual {v11}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-static {v11, v3}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v11

    .line 3346
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v11, v4, v5, v6}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3349
    .end local v11    # "event":Landroid/view/KeyEvent;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3350
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 3351
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3355
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3356
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 3357
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 3361
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3367
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/DragEvent;

    .line 3368
    .local v11, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v3, v11, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3369
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v3, v11}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3372
    .end local v11    # "event":Landroid/view/DragEvent;
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v4, v3}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 3375
    :pswitch_13
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/Configuration;

    .line 3376
    .restart local v9    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3377
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v3, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3379
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v9, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3382
    .end local v9    # "config":Landroid/content/res/Configuration;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3385
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_0

    .line 3388
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 3389
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3393
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_0

    .line 3271
    .restart local v10    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v13    # "hasWindowFocus":Z
    .restart local v14    # "inTouchMode":Z
    :catch_1
    move-exception v3

    goto/16 :goto_6

    .line 3170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_c
        :pswitch_17
    .end packed-switch
.end method
