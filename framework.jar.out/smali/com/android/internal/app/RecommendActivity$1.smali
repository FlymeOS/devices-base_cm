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
    .line 194
    iput-object p1, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 199
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v3}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 200
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mOpenHelper:Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
    invoke-static {v3}, Lcom/android/internal/app/RecommendActivity;->access$100(Lcom/android/internal/app/RecommendActivity;)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 203
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    iget-object v4, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    # getter for: Lcom/android/internal/app/RecommendActivity;->mAlwaysCheck:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/internal/app/RecommendActivity;->access$200(Lcom/android/internal/app/RecommendActivity;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    # invokes: Lcom/android/internal/app/RecommendActivity;->clearAndSetDefalutApp(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V
    invoke-static {v3, v1, v2, v4}, Lcom/android/internal/app/RecommendActivity;->access$300(Lcom/android/internal/app/RecommendActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Z)V

    .line 210
    :cond_0
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 213
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/RecommendActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$1;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/RecommendActivity;->finish()V

    .line 220
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
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
