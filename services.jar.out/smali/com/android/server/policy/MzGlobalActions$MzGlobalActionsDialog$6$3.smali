.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$3;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$3;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6$3;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$6;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0, v1, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap3(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;IZ)V

    .line 424
    return-void
.end method
