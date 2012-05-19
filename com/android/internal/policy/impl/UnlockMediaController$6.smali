.class Lcom/android/internal/policy/impl/UnlockMediaController$6;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockMediaController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockMediaController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const-string v6, "musicplayer.from"

    const-string v5, "lockscreen"

    const-string v4, "com.android.music.musicservicecommand.rew.up"

    .line 353
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020287

    if-ne v1, v2, :cond_1c

    .line 356
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_7e

    .line 386
    :cond_1c
    :goto_1c
    return v3

    .line 359
    :pswitch_1d
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$1000(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_1c

    .line 363
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 364
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    if-eqz v1, :cond_1c

    .line 365
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    .line 366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c

    .line 374
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_4f
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    if-eqz v1, :cond_6f

    .line 375
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$6;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c

    .line 380
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1c

    .line 356
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_4f
        :pswitch_29
    .end packed-switch
.end method
