.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mForegroundInPadding:Z

    .line 50
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForegroundGravity(I)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .registers 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v8, "android.intent.extra.KEY_EVENT"

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 205
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_80

    .line 206
    sparse-switch v1, :sswitch_data_a0

    :cond_14
    :goto_14
    move v2, v6

    .line 282
    :goto_15
    return v2

    .line 210
    :sswitch_16
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_28

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    :cond_28
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_36

    move v2, v5

    .line 216
    goto :goto_15

    .line 224
    :cond_36
    :sswitch_36
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 227
    goto :goto_15

    .line 232
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4b
    monitor-enter p0

    .line 233
    :try_start_4c
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_5e

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 237
    :cond_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_74

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 240
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, 0x18

    if-ne v1, v4, :cond_77

    move v4, v5

    :goto_6f
    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_72
    :goto_72
    move v2, v5

    .line 262
    goto :goto_15

    .line 237
    :catchall_74
    move-exception v2

    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v2

    .line 240
    :cond_77
    const/4 v4, -0x1

    goto :goto_6f

    .line 249
    :cond_79
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->isFMPlayerActive()Z

    move-result v2

    if-eqz v2, :cond_72

    goto :goto_72

    .line 265
    :cond_80
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_14

    .line 266
    packed-switch v1, :pswitch_data_c6

    :pswitch_89
    goto :goto_14

    .line 275
    :pswitch_8a
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 276
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 278
    goto/16 :goto_15

    .line 206
    :sswitch_data_a0
    .sparse-switch
        0x18 -> :sswitch_4b
        0x19 -> :sswitch_4b
        0x4f -> :sswitch_36
        0x55 -> :sswitch_16
        0x56 -> :sswitch_36
        0x57 -> :sswitch_36
        0x58 -> :sswitch_36
        0x59 -> :sswitch_36
        0x5a -> :sswitch_36
    .end sparse-switch

    .line 266
    :pswitch_data_c6
    .packed-switch 0x4f
        :pswitch_8a
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
        :pswitch_8a
    .end packed-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 169
    :goto_8
    return v0

    .line 162
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 169
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_12
    move v0, v1

    .line 167
    goto :goto_8

    .line 162
    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 152
    :cond_b
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 153
    const/4 v0, 0x1

    .line 155
    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method isFMPlayerActive()Z
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPlayOwnSound()Z
.end method

.method public abstract isSecureLockMode()Z
.end method

.method public abstract onBatteryLowWarn(I)V
.end method

.method public abstract onBatteryStatusHide()V
.end method

.method public abstract onBatteryStatusInform(I)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract removeMessageHander()V
.end method

.method public abstract reset()V
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 59
    return-void
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
