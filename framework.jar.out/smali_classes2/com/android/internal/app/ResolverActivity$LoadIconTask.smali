.class Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1139
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1140
    .local v0, "info":Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1141
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 1143
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1136
    check-cast p1, [Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->doInBackground([Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mProfileView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$100(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getOtherProfile()Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->access$000(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->notifyDataSetChanged()V

    .line 1152
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1136
    check-cast p1, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    return-void
.end method
