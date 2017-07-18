.class public interface abstract Lorg/cyanogenmod/platform/internal/AppSuggestProviderInterface;
.super Ljava/lang/Object;
.source "AppSuggestProviderInterface.java"


# virtual methods
.method public abstract getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcyanogenmod/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handles(Landroid/content/Intent;)Z
.end method
