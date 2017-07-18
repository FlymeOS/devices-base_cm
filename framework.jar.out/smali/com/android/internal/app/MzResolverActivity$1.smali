.class Lcom/android/internal/app/MzResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MzResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MzResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MzResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MzResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/MzResolverActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/internal/app/MzResolverActivity$1;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/app/MzResolverActivity$1;->this$0:Lcom/android/internal/app/MzResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/MzResolverActivity;->-get2(Lcom/android/internal/app/MzResolverActivity;)Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/MzResolverActivity$ResolveGridAdapter;->handlePackagesChanged()V

    .line 167
    return-void
.end method
