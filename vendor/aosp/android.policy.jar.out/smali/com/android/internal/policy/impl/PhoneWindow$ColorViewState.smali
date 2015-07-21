.class Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final id:I

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(IIILjava/lang/String;II)V
    .locals 1
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "transitionName"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "hideWindowFlag"    # I

    .prologue
    .line 4994
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4982
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 4983
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 4995
    iput p5, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->id:I

    .line 4996
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    .line 4997
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->translucentFlag:I

    .line 4998
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->verticalGravity:I

    .line 4999
    iput-object p4, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    .line 5000
    iput p6, p0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->hideWindowFlag:I

    .line 5001
    return-void
.end method
