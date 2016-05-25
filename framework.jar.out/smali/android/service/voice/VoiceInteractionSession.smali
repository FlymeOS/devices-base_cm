.class public abstract Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$Caller;,
        Landroid/service/voice/VoiceInteractionSession$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final MSG_CANCEL:I = 0x6

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_START_ABORT_VOICE:I = 0x3

.field static final MSG_START_COMMAND:I = 0x4

.field static final MSG_START_COMPLETE_VOICE:I = 0x2

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_SUPPORTS_COMMANDS:I = 0x5

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 420
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 421
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 86
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v0}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpLocation:[I

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 92
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 147
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 354
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 408
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 424
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 425
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 427
    return-void
.end method


# virtual methods
.method doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 448
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 449
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 450
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onCreate(Landroid/os/Bundle;)V

    .line 451
    return-void
.end method

.method doDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    .line 455
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 458
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 460
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 462
    :cond_0
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 464
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hideWindow()V

    .line 602
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    return-void

    .line 603
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideWindow()V
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 521
    :cond_0
    return-void
.end method

.method initViews()V
    .locals 3

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 469
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 470
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x10900ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 472
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const/16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 474
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 477
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 478
    return-void
.end method

.method newRequest(Lcom/android/internal/app/IVoiceInteractorCallback;)Landroid/service/voice/VoiceInteractionSession$Request;
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;

    .prologue
    .line 430
    monitor-enter p0

    .line 431
    :try_start_0
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-direct {v0, p1, p0}, Landroid/service/voice/VoiceInteractionSession$Request;-><init>(Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/service/voice/VoiceInteractionSession;)V

    .line 432
    .local v0, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    monitor-exit p0

    return-object v0

    .line 434
    .end local v0    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAbortVoice(Landroid/service/voice/VoiceInteractionSession$Caller;Landroid/service/voice/VoiceInteractionSession$Request;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/service/voice/VoiceInteractionSession$Caller;
    .param p2, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/voice/VoiceInteractionSession$Request;->sendAbortVoiceResult(Landroid/os/Bundle;)V

    .line 824
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->finish()V

    .line 688
    return-void
.end method

.method public abstract onCancel(Landroid/service/voice/VoiceInteractionSession$Request;)V
.end method

.method public onCloseSystemDialogs()V
    .locals 0

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->finish()V

    .line 697
    return-void
.end method

.method public abstract onCommand(Landroid/service/voice/VoiceInteractionSession$Caller;Landroid/service/voice/VoiceInteractionSession$Request;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public onCompleteVoice(Landroid/service/voice/VoiceInteractionSession$Caller;Landroid/service/voice/VoiceInteractionSession$Request;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "caller"    # Landroid/service/voice/VoiceInteractionSession$Caller;
    .param p2, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;
    .param p3, "message"    # Ljava/lang/CharSequence;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/service/voice/VoiceInteractionSession$Request;->sendCompleteVoiceResult(Landroid/os/Bundle;)V

    .line 804
    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/service/voice/VoiceInteractionSession$Insets;

    .prologue
    const/4 v3, 0x0

    .line 709
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpLocation:[I

    .line 710
    .local v1, "loc":[I
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 711
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 712
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 713
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 714
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 715
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 716
    iput v3, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 717
    iget-object v2, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 718
    return-void
.end method

.method public abstract onConfirm(Landroid/service/voice/VoiceInteractionSession$Caller;Landroid/service/voice/VoiceInteractionSession$Request;Ljava/lang/CharSequence;Landroid/os/Bundle;)V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 614
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    :goto_0
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 616
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 618
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string v2, "VoiceInteractionSession"

    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/16 v7, 0x7ef

    const/16 v8, 0x30

    const/4 v9, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 621
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 622
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->initViews()V

    .line 623
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 624
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 625
    return-void

    .line 614
    :cond_0
    const v0, 0x103048d

    goto :goto_0
.end method

.method public onCreateContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onGetSupportedCommands(Landroid/service/voice/VoiceInteractionSession$Caller;[Ljava/lang/String;)[Z
    .locals 1
    .param p1, "caller"    # Landroid/service/voice/VoiceInteractionSession$Caller;
    .param p2, "commands"    # [Ljava/lang/String;

    .prologue
    .line 763
    array-length v0, p2

    new-array v0, v0, [Z

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 747
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->finish()V

    .line 748
    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 731
    return-void
.end method

.method removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .locals 2
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .prologue
    .line 438
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 440
    .local v0, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    if-eqz v0, :cond_0

    .line 441
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    monitor-exit p0

    return-object v0

    .line 444
    .end local v0    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 643
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 644
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 648
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 532
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 536
    return-void
.end method

.method public showWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 485
    const-string v1, "VoiceInteractionSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing window: mWindowAdded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWindowVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    if-eqz v1, :cond_0

    .line 489
    const-string v1, "VoiceInteractionSession"

    const-string v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 495
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v1, :cond_2

    .line 496
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 497
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-nez v1, :cond_1

    .line 498
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 499
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 500
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    .line 504
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_2
    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 508
    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    goto :goto_0

    .line 507
    :catchall_0
    move-exception v1

    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 508
    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    throw v1
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 562
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 563
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 566
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 567
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 568
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    .line 570
    .local v0, "res":I
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v0    # "res":I
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v1

    goto :goto_0
.end method
