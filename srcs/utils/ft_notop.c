/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_notop.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nel-masr <nel-masr@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/17 16:47:00 by nel-masr          #+#    #+#             */
/*   Updated: 2022/01/14 14:30:40 by nel-masr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/minishell.h"

int	ft_notop(int c)
{
	if (c != '|' && c != '<' && c != '>' && c != '\'' && c != '"' && c != ' ')
		return (1);
	if (c == '\0')
		return (1);
	return (0);
}
