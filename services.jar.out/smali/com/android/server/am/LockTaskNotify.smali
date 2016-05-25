.class public Lcom/android/server/am/LockTaskNotify;
.super Ljava/lang/Object;
.source "LockTaskNotify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/LockTaskNotify$1;,
        Lcom/android/server/am/LockTaskNotify$SettingsObserver;,
        Lcom/android/server/am/LockTaskNotify$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskNotify"


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevForceNavbar:Z

.field private final mHandler:Lcom/android/server/am/LockTaskNotify$H;

.field private mHasNavigationBar:Z

.field private mLastToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    .line 49
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 51
    new-instance v1, Lcom/android/server/am/LockTaskNotify$H;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/LockTaskNotify$H;-><init>(Lcom/android/server/am/LockTaskNotify;Lcom/android/server/am/LockTaskNotify$1;)V

    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    .line 52
    new-instance v0, Lcom/android/server/am/LockTaskNotify$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/LockTaskNotify$SettingsObserver;-><init>(Lcom/android/server/am/LockTaskNotify;Landroid/os/Handler;)V

    .line 53
    .local v0, "observer":Lcom/android/server/am/LockTaskNotify$SettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/am/LockTaskNotify$SettingsObserver;->observe()V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/LockTaskNotify;->mHasNavigationBar:Z

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/LockTaskNotify;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/LockTaskNotify;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/am/LockTaskNotify;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/LockTaskNotify;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/server/am/LockTaskNotify;->mDevForceNavbar:Z

    return p1
.end method

.method private makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 87
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    return-object v0
.end method


# virtual methods
.method public handleShowToast(Z)V
    .locals 2
    .param p1, "isLocked"    # Z

    .prologue
    .line 63
    if-eqz p1, :cond_1

    .line 64
    const v0, 0x104075f

    .line 71
    .local v0, "textResId":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mLastToast:Landroid/widget/Toast;

    .line 75
    return-void

    .line 65
    .end local v0    # "textResId":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    const v0, 0x104075e

    .restart local v0    # "textResId":I
    goto :goto_0

    .line 68
    .end local v0    # "textResId":I
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/am/LockTaskNotify;->mHasNavigationBar:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/am/LockTaskNotify;->mDevForceNavbar:Z

    if-eqz v1, :cond_4

    :cond_3
    const v0, 0x104075d

    .restart local v0    # "textResId":I
    :goto_1
    goto :goto_0

    .end local v0    # "textResId":I
    :cond_4
    const v0, 0x10400ce

    goto :goto_1
.end method

.method public show(Z)V
    .locals 2
    .param p1, "starting"    # Z

    .prologue
    .line 78
    const v0, 0x1040761

    .line 79
    .local v0, "showString":I
    if-eqz p1, :cond_0

    .line 80
    const v0, 0x1040760

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/LockTaskNotify;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/LockTaskNotify;->makeAllUserToastAndShow(Ljava/lang/String;)Landroid/widget/Toast;

    .line 83
    return-void
.end method

.method public showToast(Z)V
    .locals 4
    .param p1, "isLocked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/android/server/am/LockTaskNotify;->mHandler:Lcom/android/server/am/LockTaskNotify$H;

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/am/LockTaskNotify$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method
