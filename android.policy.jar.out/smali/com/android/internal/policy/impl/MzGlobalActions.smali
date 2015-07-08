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
.field private static final TAG:Ljava/lang/String; = "MzGlobalActions"

.field private static mContext:Landroid/content/Context;

.field static mMzDialog:Landroid/app/Dialog;


# instance fields
.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sput-object p1, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/internal/policy/impl/MzGlobalActions;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 65
    return-void
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public showDialog()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;

    sget-object v1, Lcom/android/internal/policy/impl/MzGlobalActions;->mContext:Landroid/content/Context;

    sget v2, Lcom/flyme/internal/R$style;->GlobalActionsDialog:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MzGlobalActions$MzGlobalActionsDialog;-><init>(Lcom/android/internal/policy/impl/MzGlobalActions;Landroid/content/Context;I)V

    sput-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    .line 71
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 74
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/MzGlobalActions;->mMzDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    return-void
.end method
