.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field final synthetic val$state:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;)V
    .locals 0

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->val$state:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3235
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->val$state:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3236
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->val$state:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3237
    return-void
.end method
