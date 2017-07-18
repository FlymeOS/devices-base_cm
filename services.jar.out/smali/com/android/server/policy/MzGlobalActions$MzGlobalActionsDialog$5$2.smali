.class Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$2;
.super Ljava/lang/Object;
.source "MzGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$2;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 379
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$2;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->setCanceledOnTouchOutside(Z)V

    .line 380
    iget-object v0, p0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5$2;->this$2:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;

    iget-object v0, v0, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog$5;->this$1:Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;

    invoke-static {v0, v2, v2}, Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;->-wrap4(Lcom/android/server/policy/MzGlobalActions$MzGlobalActionsDialog;IZ)V

    .line 378
    return-void
.end method
