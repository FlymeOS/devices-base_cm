.class Lcom/android/internal/app/RecommendActivity$1;
.super Ljava/lang/Object;
.source "RecommendActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/RecommendActivity;->setGridContentView(Lcom/android/internal/app/AlertController$AlertParams;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RecommendActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RecommendActivity;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v3}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v3}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 200
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 201
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    iget-object v4, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/internal/app/RecommendActivity;->access$200(Lcom/android/internal/app/RecommendActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    # invokes: Lcom/android/internal/app/RecommendActivity;->clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    invoke-static {v3, v1, v2, v4}, Lcom/android/internal/app/RecommendActivity;->access$300(Lcom/android/internal/app/RecommendActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V

    .line 207
    :cond_0
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.requset_result"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/app/RecommendActivity;->setResult(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity;->finish()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/RecommendActivity;->finish()V

    throw v3
.end method
