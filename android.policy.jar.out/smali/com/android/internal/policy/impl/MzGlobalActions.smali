.class public Lcom/android/internal/policy/impl/MzGlobalActions;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;
    }
.end annotation


# static fields
.field public static final FONT_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.meizu.font.change"

.field private static final TAG:Ljava/lang/String; = "MzGlobalActions"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/internal/policy/impl/MzGlobalActions;

.field static mMzDialog:Landroid/app/Dialog;


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final mWindowTouchSlop:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    sput-object p1, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 83
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mWindowTouchSlop:I

    .line 84
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MzGlobalActions;)Lcom/android/internal/policy/impl/EnableAccessibilityController;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/MzGlobalActions;Lcom/android/internal/policy/impl/EnableAccessibilityController;)Lcom/android/internal/policy/impl/EnableAccessibilityController;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MzGlobalActions;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mWindowTouchSlop:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MzGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mCancelOnUp:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/MzGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mCancelOnUp:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/MzGlobalActions;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mIntercepted:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/policy/impl/MzGlobalActions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/MzGlobalActions;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mIntercepted:Z

    return p1
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)Lcom/android/internal/policy/impl/MzGlobalActions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mInstance:Lcom/android/internal/policy/impl/MzGlobalActions;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/internal/policy/impl/MzGlobalActions;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/MzGlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    sput-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mInstance:Lcom/android/internal/policy/impl/MzGlobalActions;

    .line 91
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mInstance:Lcom/android/internal/policy/impl/MzGlobalActions;

    return-object v0
.end method


# virtual methods
.method public showGlobalActionsDialog()V
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    sget-object v1, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    sget v2, Lcom/flyme/internal/R$style;->GlobalActionsDialog:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    .line 98
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 101
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 102
    return-void
.end method
